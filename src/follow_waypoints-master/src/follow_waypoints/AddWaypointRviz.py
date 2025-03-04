#!/usr/bin/env python3

import rospy
import json
import rospkg
import tf
from geometry_msgs.msg import PoseWithCovarianceStamped
from std_msgs.msg import Empty, String, Bool

class rviz_display():
    def init(self):

        rospack = rospkg.RosPack()
        self.node_loco_path = rospack.get_path('follow_waypoints') + "/depends/NODE.json"
        self.count_=0
        rospy.init_node("waypoint_updater", anonymous=True)
        rospy.Subscriber("/set_waypoint", PoseWithCovarianceStamped, self.update_json)
        rospy.Subscriber("/start_topic", Bool, self.waypoint_control)
        rospy.Subscriber("/stop_topic", Bool, self.stop_waypoint)
        rospy.Subscriber("/loop_topic", Bool, self.loopCB)
        rospy.Subscriber("/current_tag_position", String, self.tagPos)
        rospy.Subscriber("/navi_status", String, self.NaviCB)
        self.naviSTT="SUCCESS"
        self.loopRun=False
        rospy.loginfo("Listening to /set_waypoint topic...")
        self.id_tag="5"
        self.last_pos="0"
        self.pubChange=rospy.Publisher("/reload_rviz",String,queue_size=1)
        self.pubTagDest=rospy.Publisher("/tag_dest",String,queue_size=1)
        self.pubState=rospy.Publisher("/bt_request",String,queue_size=1)
    def NaviCB(self,msg):
        self.naviSTT=msg.data
    def tagPos(self,msg):
        self.last_pos=msg.data
    def loopCB(self,msg):
        self.loopRun=True
    def stop_waypoint(self,msg):
        self.pubState.publish("STOPSLAM")
        self.loopRun=False
    def StartProcess(self, pub_now):
        pubAgain = 0
        if (self.last_pos=="4" or self.last_pos=="5") and self.naviSTT=="SUCCESS" :
            self.id_tag="0"
            pubAgain = 1
        elif (self.last_pos=="0" or self.last_pos=="1") and self.naviSTT=="SUCCESS":
            self.id_tag="5"
            pubAgain = 1
        if pub_now or pubAgain:
            self.pubTagDest.publish(self.id_tag)
            rospy.sleep(0.1)
            self.pubState.publish("STARTSLAM")
    def waypoint_control(self,msg):
        if msg.data:
            
            self.StartProcess(True)
    def loop(self):
        rate=rospy.Rate(1)

        while not rospy.is_shutdown():
            if self.loopRun:
                self.StartProcess(False)
            rate.sleep()
    def quaternion_to_yaw(self,orientation):
        """ Chuyển đổi quaternion thành góc yaw (radian) """
        quaternion = (orientation.x, orientation.y, orientation.z, orientation.w)
        euler = tf.transformations.euler_from_quaternion(quaternion)
        return euler[2]  # yaw

    def update_json(self,msg):
        
        """ Hàm callback để cập nhật NODE.json với dữ liệu mới từ topic """
        try:
        
            with open(self.node_loco_path, "r") as file:
                waypoints = json.load(file)

            # Lấy thông tin vị trí từ topic
            new_x = msg.pose.pose.position.x
            new_y = msg.pose.pose.position.y
            new_yaw = self.quaternion_to_yaw(msg.pose.pose.orientation)

            
            if self.count_>5:
                self.count_=0
            get_publish=0
            for wp in waypoints:
                wp_id = int(wp["id"])
                if 0 <= wp_id <= 5 and wp_id==self.count_:
                    wp["x"] = new_x
                    wp["y"] = new_y
                    wp["yaw"] = new_yaw 
                   
                    get_publish=1
            if get_publish:
                # rospy.loginfo("Updated NODE.json with new waypoint data!")
                with open(self.node_loco_path, "w") as file:
                    json.dump(waypoints, file, indent=2)
                self.count_+=1
                data_pub=String()
                data_pub="RELOAD"
                self.pubChange.publish(data_pub)
        
            

        except Exception as e:
            rospy.logerr(f"Failed to update NODE.json: {e}")

   

def main():

    rviz_display_=rviz_display()
    rviz_display_.init()  # Gọi init() để khởi tạo class
    rviz_display_.loop()
 
