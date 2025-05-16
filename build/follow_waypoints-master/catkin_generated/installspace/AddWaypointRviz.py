#!/usr/bin/env python3

import rospy
import json
import rospkg
import tf
from geometry_msgs.msg import PoseWithCovarianceStamped
from std_msgs.msg import Empty, String

rospack = rospkg.RosPack()
node_loco_path = rospack.get_path('follow_waypoints') + "/depends/NODE.json"
class rviz_display():
    def init(self):
        self.count_=0
        rospy.init_node("waypoint_updater", anonymous=True)
        rospy.Subscriber("/set_waypoint", PoseWithCovarianceStamped, self.update_json)
        rospy.loginfo("Listening to /set_waypoint topic...")
        self.pubChange=rospy.Publisher("/reload_rviz",String,queue_size=1)
        rospy.spin()
    def quaternion_to_yaw(self,orientation):
        """ Chuyển đổi quaternion thành góc yaw (radian) """
        quaternion = (orientation.x, orientation.y, orientation.z, orientation.w)
        euler = tf.transformations.euler_from_quaternion(quaternion)
        return euler[2]  # yaw

    def update_json(self,msg):
        
        """ Hàm callback để cập nhật NODE.json với dữ liệu mới từ topic """
        try:
        
            with open(node_loco_path, "r") as file:
                waypoints = json.load(file)

            # Lấy thông tin vị trí từ topic
            new_x = msg.pose.pose.position.x
            new_y = msg.pose.pose.position.y
            new_yaw = self.quaternion_to_yaw(msg.pose.pose.orientation)

            
            if self.count_>5:
                self.count_=0
            for wp in waypoints:
                wp_id = int(wp["id"])
                if 0 <= wp_id <= 5 and wp_id==self.count_:
                    wp["x"] = new_x
                    wp["y"] = new_y
                    wp["yaw"] = new_yaw 
                    self.count_+=1

                    rospy.loginfo("Updated NODE.json with new waypoint data!")
                    with open(node_loco_path, "w") as file:
                        json.dump(waypoints, file, indent=2)
                    data_pub=String()
                    data_pub="RELOAD"
                    self.pubChange.publish(data_pub)
        
            

        except Exception as e:
            rospy.logerr(f"Failed to update NODE.json: {e}")

   

if __name__ == '__main__':
    try:
        rviz_display_=rviz_display()
    except rospy.ROSInterruptException:
        pass
