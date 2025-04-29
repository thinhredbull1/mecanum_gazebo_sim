#!/usr/bin/env python3

import rospy
import json
import rospkg
import tf
from geometry_msgs.msg import PoseWithCovarianceStamped
from std_msgs.msg import Empty, String, Bool

class rviz_display:
    def __init__(self):  # Sửa init thành __init__
        rospack = rospkg.RosPack()
        self.node_loco_path = rospack.get_path('follow_waypoints') + "/depends/NODE.json"
        self.relation_path = rospack.get_path('follow_waypoints') + "/depends/node_relation.json"
        self.tag_path = rospack.get_path('follow_waypoints') + "/depends/tag2node.json"
        self.count_ = 0
        rospy.init_node("waypoint_updater", anonymous=True)
        rospy.Subscriber("/set_waypoint", PoseWithCovarianceStamped, self.update_json)
        rospy.Subscriber("/start_topic", Bool, self.waypoint_control)
        rospy.Subscriber("/stop_topic", Bool, self.stop_waypoint)
        rospy.Subscriber("/loop_topic", Bool, self.loopCB)
        rospy.Subscriber("/current_tag_position", String, self.tagPos)
        rospy.Subscriber("/navi_status", String, self.NaviCB)
        rospy.Subscriber("/point_label", String, self.pointLabelCB)  # Thêm subscriber cho topic point_label
        self.naviSTT = "SUCCESS"
        self.loopRun = False
        self.last_pos = "0"
        rospy.loginfo("Listening to /set_waypoint topic...")
        try:
            with open(self.node_loco_path, "r") as file:
                waypoints = json.load(file)
                id_max=0
                for wp in waypoints:
                    wp_id = int(wp["id"])
                    if wp_id>id_max:
                        id_max=wp_id
                self.threshold = str(id_max)  # Giá trị mặc định cho ngưỡng count_, sẽ được cập nhật từ topic
                self.id_tag = str(id_max)  # Giá trị mặc định ban đầu
        except:
            rospy.logwarn(f"Invalid id in node loco path")
            self.threshold = "0"  # Giá trị mặc định cho ngưỡng count_, sẽ được cập nhật từ topic
            self.id_tag = "0"  # Giá trị mặc định ban đầu
        self.pubChange = rospy.Publisher("/reload_rviz", String, queue_size=1)
        self.pubTagDest = rospy.Publisher("/tag_dest", String, queue_size=1)
        self.pubState = rospy.Publisher("/bt_request", String, queue_size=1)

    def pointLabelCB(self, msg):
        """Callback để nhận giá trị từ topic /point_label"""
        if msg.data == "0":
          
            try:
                with open(self.node_loco_path, "w") as file:
                    json.dump([], file, indent=2) 
                rospy.loginfo("Cleared all waypoints in NODE.json")
                self.count_ = 0  # Đặt lại count_
                data_pub = String()
                data_pub.data = "RELOAD"
                self.pubChange.publish(data_pub)
            except Exception as e:
                rospy.logerr(f"Failed to clear NODE.json: {e}")
        else:
            self.threshold = msg.data
            rospy.loginfo(f"Received point_label: {self.threshold}")

    def NaviCB(self, msg):
        self.naviSTT = msg.data

    def tagPos(self, msg):
        self.last_pos = msg.data

    def loopCB(self, msg):
        self.loopRun = True

    def stop_waypoint(self, msg):
        self.pubState.publish("STOPSLAM")
        self.loopRun = False

    def StartProcess(self, pub_now):
        pubAgain = 0
        back_threshold=int(self.threshold)-1
        if (int(self.last_pos) == back_threshold or self.last_pos == self.threshold) and self.naviSTT == "SUCCESS":
            self.id_tag = "0"
            pubAgain = 1
        elif (self.last_pos == "0" or self.last_pos == "1") and self.naviSTT == "SUCCESS":
            self.id_tag = self.threshold
            pubAgain = 1
        if pub_now or pubAgain:
            self.pubTagDest.publish(self.id_tag)
            rospy.sleep(0.1)
            self.pubState.publish("STARTSLAM")

    def waypoint_control(self, msg):
        if msg.data:
            self.StartProcess(True)

    def loop(self):
        rate = rospy.Rate(1)
        while not rospy.is_shutdown():
            if self.loopRun:
                self.StartProcess(False)
            rate.sleep()

    def quaternion_to_yaw(self, orientation):
        """Chuyển đổi quaternion thành góc yaw (radian)"""
        quaternion = (orientation.x, orientation.y, orientation.z, orientation.w)
        euler = tf.transformations.euler_from_quaternion(quaternion)
        return euler[2]  # yaw

    def update_json(self, msg):
        """Hàm callback để cập nhật NODE.json với dữ liệu mới từ topic"""
        try:
            try:
                with open(self.node_loco_path, "r") as file:
                    waypoints = json.load(file)
            except (FileNotFoundError, json.JSONDecodeError):
                waypoints = []  # Nếu file rỗng hoặc không tồn tại, khởi tạo danh sách rỗng
            
            # Lấy thông tin vị trí từ topic
            new_x = msg.pose.pose.position.x
            new_y = msg.pose.pose.position.y
            new_yaw = self.quaternion_to_yaw(msg.pose.pose.orientation)

            # Chuyển đổi threshold thành số nguyên để so sánh
            try:
                threshold_int = int(self.threshold)
            except ValueError:
                rospy.logwarn(f"Invalid point_label value: {self.threshold}, using default 5")
                threshold_int = 5

            if self.count_ > threshold_int:
                self.count_ = 0
            get_publish = 0
  
            for wp in waypoints:
                wp_id = int(wp["id"])
                if 0 <= wp_id <= threshold_int and wp_id == self.count_:
                    wp["x"] = new_x
                    wp["y"] = new_y
                    wp["yaw"] = new_yaw
                    get_publish = 1
            if not get_publish:
                new_waypoint = {
                    "id": str(self.count_),
                    "x": new_x,
                    "y": new_y,
                    "yaw": new_yaw,
                    "collision": 'N'
                }
                waypoints.append(new_waypoint)
                get_publish = 1
                rospy.loginfo(f"Added new waypoint with id {self.count_} to NODE.json")
            if get_publish:
                with open(self.node_loco_path, "w") as file:
                    json.dump(waypoints, file, indent=2)
                self.count_ += 1
                data_pub = String()
                data_pub.data = "RELOAD"
                self.pubChange.publish(data_pub)
            try:
                with open(self.relation_path, "r") as file:
                    relations = json.load(file)
            except (FileNotFoundError, json.JSONDecodeError):
                relations = []  # Nếu file không tồn tại hoặc rỗng, khởi tạo danh sách rỗng

            # Xây dựng quan hệ mới nếu cần
            max_id = max([r["id"] for r in relations], default=-1) if relations else -1
            if threshold_int > max_id:
                new_relations = []
                # Thêm quan hệ cho các id từ max_id + 1 đến threshold_int
                for i in range(max_id + 1, threshold_int + 1):
                    if i == 0:
                        new_relations.append({"id": 0, "childs": [1]})
                    else:
                        # Quan hệ hai chiều với id trước đó
                        new_relations.append({"id": i, "childs": [i - 1]})
                        if i > 0 and i - 1 not in [r["id"] for r in new_relations]:
                            new_relations.append({"id": i - 1, "childs": [i]})
                        # Quan hệ từ id cuối cùng về 0
                        if i == threshold_int:
                            new_relations.append({"id": i, "childs": [0]})
                            if 0 not in [r["id"] for r in new_relations]:
                                new_relations.append({"id": 0, "childs": [i]})
                # Gộp quan hệ mới vào quan hệ cũ
                for rel in new_relations:
                    existing = next((r for r in relations if r["id"] == rel["id"]), None)
                    if existing:
                        existing["childs"] = list(set(existing["childs"] + rel["childs"]))
                    else:
                        relations.append(rel)
                # Ghi lại file relation.json
                with open(self.relation_path, "w") as file:
                    json.dump(relations, file, indent=2)
                rospy.loginfo(f"Updated relation.json for threshold: {threshold_int}")
        except Exception as e:
            rospy.logerr(f"Failed to update NODE.json: {e}")

def main():
    rviz_display_ = rviz_display()
    rviz_display_.loop()

if __name__ == '__main__':
    main()