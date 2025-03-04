#! /usr/bin/env python3
# -*- coding: utf-8 -*-
import yaml
import os
import sys
import rospy
import rospkg
import tf
import copy
import json
import geometry_msgs.msg
from geometry_msgs.msg import Twist, Pose, PoseStamped, PoseWithCovarianceStamped
from std_msgs.msg import Bool, Int16, String
from math import pi, sqrt
from tf.listener import TransformListener, Transformer
from tf.transformations import euler_from_quaternion, quaternion_from_euler
import tf2_ros
from shapely.geometry import Point
from shapely.geometry.polygon import Polygon
from visualization_msgs.msg import Marker
from restricted_layer.msg import DataArray, Data
from std_stamped_msgs.msg import StringStamped

# common_func_dir = os.path.join(rospkg.RosPack().get_path('agv_common_library'), 'scripts')
# if not os.path.isdir(common_func_dir):
#     common_func_dir = os.path.join(rospkg.RosPack().get_path('agv_common_library'), 'release')
# sys.path.insert(0, common_func_dir)

# from common_function import (
#     make_transform_stamped,
# )
dir = os.path.join(rospkg.RosPack().get_path("restricted_layer"), "data")
test_ = True  # set False if use with real robot


class RestrictArea(object):
    def __init__(self, name):
        rospy.Subscriber(
            "/cancle_restrict_edit", Bool, self.cancle_setting_cb
        )
        rospy.Subscriber(
            "/mouse_location", geometry_msgs.msg.Point, self.mouse_location_cb
        )
        rospy.Subscriber(
            "/restrict_settings", geometry_msgs.msg.Point, self.restrict_settings_cb
        )
        if not test_:
            rospy.Subscriber("/current_map", StringStamped, self.get_map_name_cb)
        rospy.Subscriber("/finish_flag", String, self.finish_flag_cb)
        self.mouse_location_pub = rospy.Publisher(
            "/mouse_location_backup", DataArray, queue_size=10
        )
        self.pub_line_min_dist = rospy.Publisher("~line_min_dist", Marker, queue_size=1)
        self.init_variable()
        # self.loop()
        rospy.spin()

    def yaml_load(self, filepath):
        try:
            with open(filepath, "r+") as file:
                data = yaml.load(file, Loader=yaml.FullLoader)
            return data
        except:
            with open(filepath, "w+") as file:
                value = {"data": []}
                yaml.dump(value, file)
                data = yaml.load(file, Loader=yaml.FullLoader)
                return data

    def yaml_dump(self, file_path, data):
        with open(file_path, "w+") as file:
            value = {"data": data}
            yaml.dump(value, file)

    """
    .####.##....##.####.########.........########.....###....########.....###....##.....##
    ..##..###...##..##.....##............##.....##...##.##...##.....##...##.##...###...###
    ..##..####..##..##.....##............##.....##..##...##..##.....##..##...##..####.####
    ..##..##.##.##..##.....##............########..##.....##.########..##.....##.##.###.##
    ..##..##..####..##.....##............##........#########.##...##...#########.##.....##
    ..##..##...###..##.....##............##........##.....##.##....##..##.....##.##.....##
    .####.##....##.####....##....#######.##........##.....##.##.....##.##.....##.##.....##
    """

    def init_variable(self):
        self.rate = rospy.Rate(1)
        self.operation = None
        self.finish_flag = False
        self.size = 1
        self.clear_all = False
        self.clear = False
        self.data = None
        self.list_pose_ori = []
        self.list_pose_clear = []
        self.list_pose_clear_draw = []
        self.list_pose_ori_draw = []
        self.id_marker = 0
        self.first_time = True
        if test_:
            rospy.sleep(1)
            self.get_map_success = True
            self.file_path = dir + "/" + "map_now.yaml"
            if self.yaml_load(self.file_path) == None:
                self.yaml_dump(self.file_path, [])
        else:
            self.get_map_success = False
            rospy.sleep(150)
        while not self.get_map_success:
            rospy.loginfo_throttle(3, "wait for map")
        if self.get_map_success:
            data_raw = self.yaml_load(self.file_path)
            data = data_raw.get("data")
            self.point_array_msg = DataArray()
            if len(data) > 0:
                for i in range(len(data)):
                    self.point_msg = Data()
                    self.point_msg.x = data[i][0]
                    self.point_msg.y = data[i][1]
                    self.point_array_msg.data.append(self.point_msg)
                self.mouse_location_pub.publish(self.point_array_msg)
                rospy.sleep(0.1)
        rospy.logwarn("INIT COSTMAP SUCCESS")

    def shutdown(self):
        rospy.loginfo("Shuting down")

    """
    .########..####..######..########..##..........###....##....##.........##.......####.##....##.########
    .##.....##..##..##....##.##.....##.##.........##.##....##..##..........##........##..###...##.##......
    .##.....##..##..##.......##.....##.##........##...##....####...........##........##..####..##.##......
    .##.....##..##...######..########..##.......##.....##....##............##........##..##.##.##.######..
    .##.....##..##........##.##........##.......#########....##............##........##..##..####.##......
    .##.....##..##..##....##.##........##.......##.....##....##............##........##..##...###.##......
    .########..####..######..##........########.##.....##....##....#######.########.####.##....##.########
    """

    def Init_Marker(self, id=0):
        self.marker = Marker()
        # self.marker.ns = ""
        self.marker.id = id
        self.marker.header.frame_id = "map"
        self.marker.type = self.marker.LINE_STRIP
        self.marker.action = self.marker.ADD

        # self.marker scale
        self.marker.scale.x = 0.03
        self.marker.scale.y = 0.03
        self.marker.scale.z = 0.03

        # self.marker color
        self.marker.color.a = 1.0
        self.marker.color.r = 1.0
        self.marker.color.g = 1.0
        self.marker.color.b = 0.0

        # self.marker orientaiton
        self.marker.pose.orientation.x = 0.0
        self.marker.pose.orientation.y = 0.0
        self.marker.pose.orientation.z = 0.0
        self.marker.pose.orientation.w = 1.0

        # self.marker position
        self.marker.pose.position.x = 0.0
        self.marker.pose.position.y = 0.0
        self.marker.pose.position.z = 0.0

    """
    ..######...########.########....##.......####.##....##.########
    .##....##..##..........##.......##........##..###...##.##......
    .##........##..........##.......##........##..####..##.##......
    .##...####.######......##.......##........##..##.##.##.######..
    .##....##..##..........##.......##........##..##..####.##......
    .##....##..##..........##.......##........##..##...###.##......
    ..######...########....##.......########.####.##....##.########
    """
    def get_line_new(self, x1, y1, x2, y2, step):
        raw_data = self.yaml_load(self.file_path)
        self.data = raw_data.get("data")
        distance = sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
        total_point = int(distance / step)
        for i in range(total_point):
            x = x1 + (x2 - x1)*(i/total_point)
            y = y1 + (y2 - y1)*(i/total_point)
            self.data.append([x,y])
        return self.data


    def get_line(self, x1, y1, x2, y2, step):
        temp = []
        raw_data = self.yaml_load(self.file_path)
        self.data = raw_data.get("data")
        issteep = abs(y2 - y1) > abs(x2 - x1)
        if issteep:
            x1, y1 = y1, x1
            x2, y2 = y2, x2
        rev = False
        if x1 > x2:
            x1, x2 = x2, x1
            y1, y2 = y2, y1
            rev = True
        deltax = x2 - x1
        deltay = abs(y2 - y1)
        error = int(deltax / 2)
        y = y1
        ystep = None
        if y1 < y2:
            ystep = 1
        else:
            ystep = -1
        # for x in range(x1, x2 + 1):
        i = 0
        while x1 + i < x2:
            x = x1 + i
            i += step
            if issteep:
                temp.append([y, x])
            else:
                temp.append([x, y])
            error -= deltay
            if error < 0:
                y += ystep
                error += deltax
        # Reverse the list if the coordinates were reversed
        if rev:
            temp.reverse()
        self.data += temp
        return self.data

    """
    ..######...########.########.........##.......####.##....##.########
    .##....##..##..........##............##........##..###...##.##......
    .##........##..........##............##........##..####..##.##......
    .##...####.######......##............##........##..##.##.##.######..
    .##....##..##..........##............##........##..##..####.##......
    .##....##..##..........##............##........##..##...###.##......
    ..######...########....##....#######.########.####.##....##.########
    """
    def getLine(self, x1, y1, x2, y2, step):
        raw_data = self.yaml_load(self.file_path)
        self.data = raw_data.get("data")
        if abs(y2 - y1) < abs(x2 - x1):
            if x1 == x2:  ## Perfectly horizontal line, can be solved easily
                i = 0
                if y2 < y1:
                    y = y1
                    y1 = y2
                    y2 = y
                while (
                    y1 + i < y2
                ):  ## Keep iterating until the end of the line is reached
                    i += step
                    self.data.append([x1, y1 + i])  ## Add the next point on the line
            else:  ## More of a problem, ratios can be used instead
                if (
                    x1 > x2
                ):  ## If the line goes "backwards", flip the positions, to go "forwards" down it.
                    x = x1
                    x1 = x2
                    x2 = x
                    y = y1
                    y1 = y2
                    y2 = y
                slope = (y2 - y1) / (x2 - x1)  ## Calculate the slope of the line
                i = 0
                while (
                    x1 + i < x2
                ):  ## Keep iterating until the end of the line is reached
                    i += step
                    self.data.append(
                        [x1 + i, y1 + slope * i]
                    )  ## Add the next point on the line
            return self.data
        else:
            if y1 == y2:  ## Perfectly horizontal line, can be solved easily
                i = 0
                if x2 < x1:
                    x = x1
                    x1 = x2
                    x2 = x
                while (
                    x1 + i < x2
                ):  ## Keep iterating until the end of the line is reached
                    i += step
                    self.data.append([x1 + i, y1])  ## Add the next point on the line
            else:  ## More of a problem, ratios can be used instead
                if (
                    y1 > y2
                ):  ## If the line goes "backwards", flip the positions, to go "forwards" down it.
                    x = x1
                    x1 = x2
                    x2 = x
                    y = y1
                    y1 = y2
                    y2 = y
                slope = (x2 - x1) / (y2 - y1)  ## Calculate the slope of the line
                i = 0
                while (
                    y1 + i < y2
                ):  ## Keep iterating until the end of the line is reached
                    i += step
                    self.data.append(
                        [x1 + slope * i, y1 + i]
                    )  ## Add the next point on the line
            return self.data

    """
     ######     ###    ##       ##       ########     ###     ######  ##    ##
    ##    ##   ## ##   ##       ##       ##     ##   ## ##   ##    ## ##   ##
    ##        ##   ##  ##       ##       ##     ##  ##   ##  ##       ##  ##
    ##       ##     ## ##       ##       ########  ##     ## ##       #####
    ##       ######### ##       ##       ##     ## ######### ##       ##  ##
    ##    ## ##     ## ##       ##       ##     ## ##     ## ##    ## ##   ##
     ######  ##     ## ######## ######## ########  ##     ##  ######  ##    ##
    """

    def get_map_name_cb(self, msg):
        self.file_path = dir + "/" + msg.data + ".yaml"
        if self.yaml_load(self.file_path) == None:
            self.yaml_dump(self.file_path, [])
        self.get_map_success = True

    def cancle_setting_cb(self, msg):
        if msg.data == True:
            rospy.logwarn("CLear Setting")
            self.Init_Marker()
            self.marker.action = Marker.DELETEALL
            self.pub_line_min_dist.publish(self.marker)
            rospy.sleep(0.1)
            self.list_pose_clear.clear()
            self.list_pose_ori.clear()
            self.list_pose_clear_draw.clear()
            self.list_pose_ori_draw.clear()


    def mouse_location_cb(self, msg, type=False):
        # try:
        if self.get_map_success:
            rospy.sleep(0.1)
            if self.clear_all:
                rospy.logwarn("CLEAR ALL")
                self.point_msg = Data()
                self.point_array_msg = DataArray()
                self.point_msg.x = 0
                self.point_msg.y = 0
                self.point_array_msg.data.append(self.point_msg)
                self.mouse_location_pub.publish(self.point_array_msg)
                self.id_marker = 0
                self.list_pose_clear.clear()
                self.list_pose_ori.clear()
                self.list_pose_clear_draw.clear()
                self.list_pose_ori_draw.clear()
                self.yaml_dump(self.file_path, [])
            else:
                if self.clear:
                    # rospy.logwarn("STATE CLEAR")
                    if not type:
                        self.list_pose_clear.append((msg.x, msg.y))
                        self.list_pose_clear_draw.append((msg.x, msg.y))
                    #     print("list point clear add:{}".format(self.list_pose_clear))
                    # print("Number pose clear :{}".format(len(self.list_pose_clear)))

                    if len(self.list_pose_clear_draw) == 2:
                        self.Init_Marker(id=self.id_marker)
                        self.id_marker += 1
                        # marker line points
                        self.marker.points = []
                        # first point
                        first_line_point = geometry_msgs.msg.Point()
                        first_line_point.x = self.list_pose_clear_draw[0][0]
                        first_line_point.y = self.list_pose_clear_draw[0][1]
                        first_line_point.z = 0.0
                        self.marker.points.append(first_line_point)
                        # second point
                        second_line_point = geometry_msgs.msg.Point()
                        second_line_point.x = self.list_pose_clear_draw[1][0]
                        second_line_point.y = self.list_pose_clear_draw[1][1]
                        second_line_point.z = 0.0
                        self.marker.points.append(second_line_point)

                        # Publish the Marker
                        self.pub_line_min_dist.publish(self.marker)
                        rospy.sleep(0.1)
                        # remove first pose
                        self.list_pose_clear_draw.pop(0)
                    if len(self.list_pose_clear) >= 3 and self.finish_flag:
                        self.finish_flag = False
                        rospy.logwarn("CLEAR DATA IN POLYGON")
                        self.marker.action = Marker.DELETEALL
                        self.pub_line_min_dist.publish(self.marker)
                        rospy.sleep(0.1)
                        shape = []
                        for i in range(len(self.list_pose_clear)):
                            shape.append(self.list_pose_clear[i])
                        if Polygon(shape).is_valid:
                            polygon = Polygon(shape)
                            raw_data = self.yaml_load(self.file_path)
                            self.data = raw_data.get("data")
                            if len(self.data) == 0:
                                return
                            data_copy = copy.deepcopy(self.data)
                            for i in range(len(data_copy)):
                                point = Point(data_copy[i][0], data_copy[i][1])
                                if polygon.contains(point):
                                    self.data.remove([data_copy[i][0], data_copy[i][1]])
                            self.yaml_dump(self.file_path, self.data)
                            self.point_array_msg = DataArray()
                            if len(self.data) > 0:
                                for i in range(len(self.data)):
                                    self.point_msg = Data()
                                    self.point_msg.x = self.data[i][0]
                                    self.point_msg.y = self.data[i][1]
                                    self.point_array_msg.data.append(self.point_msg)
                                self.mouse_location_pub.publish(self.point_array_msg)
                                rospy.sleep(0.1)
                            else:
                                self.point_msg = Data()
                                self.point_msg.x = 0
                                self.point_msg.y = 0
                                self.point_array_msg.data.append(self.point_msg)
                                self.mouse_location_pub.publish(self.point_array_msg)
                        self.list_pose_clear.clear()
                else:
                    # rospy.logwarn("STATE ADD")
                    if not type:
                        self.list_pose_ori.append((msg.x, msg.y))
                        self.list_pose_ori_draw.append((msg.x, msg.y))
                        # print("list point add:{}".format(self.list_pose_ori))
                    # print("finish_flag :{}".format(self.finish_flag))
                    # print("Total list point {}".format(len(self.list_pose_ori)))
                    if len(self.list_pose_ori_draw) == 2:
                        self.Init_Marker(id=self.id_marker)
                        self.id_marker += 1
                        # marker line points
                        self.marker.points = []
                        # first point
                        first_line_point = geometry_msgs.msg.Point()
                        first_line_point.x = self.list_pose_ori_draw[0][0]
                        first_line_point.y = self.list_pose_ori_draw[0][1]
                        first_line_point.z = 0.0
                        self.marker.points.append(first_line_point)
                        # second point
                        second_line_point = geometry_msgs.msg.Point()
                        second_line_point.x = self.list_pose_ori_draw[1][0]
                        second_line_point.y = self.list_pose_ori_draw[1][1]
                        second_line_point.z = 0.0
                        self.marker.points.append(second_line_point)

                        # Publish the Marker
                        self.pub_line_min_dist.publish(self.marker)
                        # remove first pose
                        self.list_pose_ori_draw.pop(0)
                        rospy.sleep(0.1)

                    if len(self.list_pose_ori) >= 2 and self.finish_flag:
                        self.marker.action = Marker.DELETEALL
                        self.pub_line_min_dist.publish(self.marker)
                        rospy.sleep(0.1)
                        self.finish_flag = False
                        temp = copy.deepcopy(self.list_pose_ori)
                        rospy.logwarn("SAVED DATA")
                        for i in range(len(temp)):
                            self.get_line_new(
                                self.list_pose_ori[i][0],
                                self.list_pose_ori[i][1],
                                self.list_pose_ori[i + 1][0],
                                self.list_pose_ori[i + 1][1],
                                0.15,
                            )
                            # self.getLine(
                            #     self.list_pose_ori[i][0],
                            #     self.list_pose_ori[i][1],
                            #     self.list_pose_ori[i + 1][0],
                            #     self.list_pose_ori[i + 1][1],
                            #     0.2,
                            # )
                            # self.get_line(
                            #     self.list_pose_ori[i][0],
                            #     self.list_pose_ori[i][1],
                            #     self.list_pose_ori[i + 1][0],
                            #     self.list_pose_ori[i + 1][1],
                            #     0.1,
                            # )
                            self.yaml_dump(self.file_path, self.data)
                            if i >= len(temp) - 2:
                                break
                        self.point_array_msg = DataArray()
                        for i in range(len(self.data)):
                            self.point_msg = Data()
                            self.point_msg.x = self.data[i][0]
                            self.point_msg.y = self.data[i][1]
                            self.point_array_msg.data.append(self.point_msg)
                        self.mouse_location_pub.publish(self.point_array_msg)
                        rospy.sleep(0.1)
                        self.list_pose_ori.clear()

    # except:
    #     print("error")
    def restrict_settings_cb(self, msg):
        if self.get_map_success:
            self.finish_flag = False
            self.size = msg.x
            self.clear_all = msg.y
            self.clear = msg.z

    def finish_flag_cb(self, msg):
        if self.get_map_success:
            self.Init_Marker()
            self.marker.action = Marker.DELETEALL
            self.pub_line_min_dist.publish(self.marker)
            rospy.sleep(0.1)
            self.list_pose_clear_draw.clear()
            self.list_pose_ori_draw.clear()
            self.finish_flag = True
            self.id_marker = 0
            self.mouse_location_cb(msg=None, type=True)

    """
    ##        #######   #######  ########
    ##       ##     ## ##     ## ##     ##
    ##       ##     ## ##     ## ##     ##
    ##       ##     ## ##     ## ########
    ##       ##     ## ##     ## ##
    ##       ##     ## ##     ## ##
    ########  #######   #######  ##
    """

    def loop(self):
        while not rospy.is_shutdown():
            self.rate.sleep()


def main():
    log_level = None
    rospy.init_node("restrict_area", log_level=log_level)
    rospy.loginfo("Init node " + rospy.get_name())
    RestrictArea(rospy.get_name())


if __name__ == "__main__":
    main()
