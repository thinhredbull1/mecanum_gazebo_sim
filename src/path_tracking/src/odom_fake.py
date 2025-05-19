#!/usr/bin/env python
import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Point, Quaternion
import std_srvs.srv
import math
import tf
class OdomResetter:
    def __init__(self):
        rospy.init_node('odom_resetter', anonymous=True)
        
        # Biến lưu trữ
        self.x = 0.0  # Vị trí x
        self.y = 0.0  # Vị trí y
        self.theta = 0.0  # Góc hướng
        self.last_time = None  # Thời gian trước đó
        
        # Subscriber và Publisher
        self.odom_sub = rospy.Subscriber('/odom', Odometry, self.odom_callback)
        self.odom_pub = rospy.Publisher('/odom_reset', Odometry, queue_size=10)
        self.tf_broadcaster = tf.TransformBroadcaster()
        # Service để reset
        self.reset_service = rospy.Service('reset_odom', std_srvs.srv.Empty, self.reset_callback)

    def odom_callback(self, msg):
        # Lấy vận tốc từ topic /odom
        v_x = msg.twist.twist.linear.x  # Vận tốc tuyến tính theo x
        v_y = msg.twist.twist.linear.y  # Vận tốc tuyến tính theo y (thường là 0 cho robot khác biệt)
        w = msg.twist.twist.angular.z   # Vận tốc góc
        
        # Tính thời gian hiện tại và delta time
        current_time = rospy.Time.now()
        if self.last_time is None:
            self.last_time = current_time
            return
        
        dt = (current_time - self.last_time).to_sec()
        self.last_time = current_time
        
        # Tích phân vận tốc để tính vị trí mới
        delta_x = v_x * math.cos(self.theta) * dt - v_y * math.sin(self.theta) * dt
        delta_y = v_x * math.sin(self.theta) * dt + v_y * math.cos(self.theta) * dt
        delta_theta = w * dt
        
        self.x += delta_x
        self.y += delta_y
        self.theta += delta_theta
        
        # Chuẩn hóa góc theta trong [-pi, pi]
        while self.theta > math.pi:
            self.theta -= 2 * math.pi
        while self.theta < -math.pi:
            self.theta += 2 * math.pi
        
        # Tạo message Odometry mới
        odom_reset = Odometry()
        odom_reset.header = msg.header
        odom_reset.header.frame_id = "odom_reset"
        odom_reset.child_frame_id = "base_link"
        
        # Gán vị trí
        odom_reset.pose.pose.position = Point(self.x, self.y, 0.0)
        
        # Chuyển theta thành quaternion
        q = self.quaternion_from_euler(0, 0, self.theta)
        odom_reset.pose.pose.orientation.x = q[0]
        odom_reset.pose.pose.orientation.y = q[1]
        odom_reset.pose.pose.orientation.z = q[2]
        odom_reset.pose.pose.orientation.w = q[3]
        
        # Gán vận tốc từ /odom
        odom_reset.twist.twist = msg.twist.twist
        
        # Publish odometry mới
        self.odom_pub.publish(odom_reset)
        self.tf_broadcaster.sendTransform(
            (self.x, self.y, 0.0),  # Vị trí (x, y, z)
            q,                      # Quaternion
            current_time,           # Thời gian
            "base_link",            # Child frame
            "odom_reset"                  # Parent frame
        )
    def reset_callback(self, req):
        # Reset vị trí và góc về 0
        self.x = 0.0
        self.y = 0.0
        self.theta = 0.0
        rospy.loginfo("Odometry reset to (0, 0, 0)")
        return []

    def quaternion_from_euler(self, roll, pitch, yaw):
        # Chuyển từ góc Euler sang quaternion
        qx = math.sin(roll/2) * math.cos(pitch/2) * math.cos(yaw/2) - math.cos(roll/2) * math.sin(pitch/2) * math.sin(yaw/2)
        qy = math.cos(roll/2) * math.sin(pitch/2) * math.cos(yaw/2) + math.sin(roll/2) * math.cos(pitch/2) * math.sin(yaw/2)
        qz = math.cos(roll/2) * math.cos(pitch/2) * math.sin(yaw/2) - math.sin(roll/2) * math.sin(pitch/2) * math.cos(yaw/2)
        qw = math.cos(roll/2) * math.cos(pitch/2) * math.cos(yaw/2) + math.sin(roll/2) * math.sin(pitch/2) * math.sin(yaw/2)
        return [qx, qy, qz, qw]

if __name__ == '__main__':
    try:
        OdomResetter()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass