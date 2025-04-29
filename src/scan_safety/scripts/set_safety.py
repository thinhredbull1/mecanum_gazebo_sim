#! /usr/bin/env python

import rospy

import actionlib
from actionlib import GoalStatus
import json
import os
import rospkg
import sys

from bson.json_util import dumps

agv_mongodb_dir = os.path.join(
    rospkg.RosPack().get_path("agv_mongodb"), "scripts"
)
if not os.path.isdir(agv_mongodb_dir):
    agv_mongodb_dir = os.path.join(
        rospkg.RosPack().get_path("agv_mongodb"), "release"
    )
sys.path.insert(0, agv_mongodb_dir)
from mongodb import mongodb

common_func_dir = os.path.join(
    rospkg.RosPack().get_path("agv_common_library"), "scripts"
)
if not os.path.isdir(common_func_dir):
    common_func_dir = os.path.join(
        rospkg.RosPack().get_path("agv_common_library"), "release"
    )
sys.path.insert(0, common_func_dir)
from common_function import (
    EnumString,
    lockup_pose,
    dict_to_obj,
    merge_two_dicts,
    print_info,
    print_warn,
    print_error,
    obj_to_dict,
    angle_robot_vs_robot_to_goal,
    distance_two_pose,
    YamlDumper,
)

from std_stamped_msgs.msg import StringAction, StringGoal, StringStamped, StringActionFeedback, StringActionResult, StringResult

class SetSafety():


    def __init__(self):

        self.pre_safety_job_name = None
        self.pre_safety_job_not_disable = None
        self.pre_footprint_job_name = None
        db_address = rospy.get_param("/mongodb_address")
        rospy.logwarn(db_address)
        self.db = mongodb(db_address)
        self.set_safety_job_client = actionlib.SimpleActionClient(
            "set_safety_job", StringAction
        )
        self.set_footprint_client = actionlib.SimpleActionClient(
            "set_footprint", StringAction
        )
        rospy.Subscriber("/safety_job_name", StringStamped, self.set_safety_cb)
        rospy.Subscriber("/safety_job_joystick_name", StringStamped, self.set_safety_cb)
        rospy.Subscriber("/safety_footprint_name", StringStamped, self.set_footprint_cb)
        rospy.Subscriber("/reset_safety_before_disable", StringStamped, self.reset_safety_cb)
        self.done_set_safety = False

    def set_footprint(self, footprint):
        goal = StringGoal()
        try:
            rospy.logwarn("set_footprint: {}".format(footprint))
            goal.data = json.dumps({"params": json.loads(footprint)})
            self.set_footprint_client.send_goal(goal)
        except Exception as e:
            rospy.logerr("set_footprint: {}".format(e))

    def set_footprint_cb(self, msg):
        rospy.logwarn("RECEIVE FOOTPRINT REQ: {}".format(msg.data))
        self.pre_footprint_job_name = msg.data
        if msg.data != "":
            footprint_job = msg.data
            footprint_bson = self.db.getFootprint(footprint_job)
            if footprint_bson != None:
                footprint_string = dumps(
                    footprint_bson, indent=2, sort_keys=True
                )
                footprint_dict = json.loads(footprint_string)
                footprint_json = json.dumps({"footprint": footprint_dict})
                self.set_footprint(footprint_json)
                rospy.logerr("Set footprint before move")

    def set_safety_job(self, job):
        goal = StringGoal()
        try:
            goal.data = json.dumps({"params": json.loads(job)})
            self.set_safety_job_client.send_goal(goal)
            # self.set_safety_job_client.wait_for_result()
            # done_set_safety = self.set_safety_job_client.get_result()
            rospy.logerr("set safety done")
            return True
            # if (done_set_safety.status == GoalStatus.SUCCEEDED
            #     or done_set_safety.status == GoalStatus.PENDING
            #     or done_set_safety.status == GoalStatus.ACTIVE):
            #     rospy.logerr("set_safety DONE")
            #     return True
            # else:
            #     rospy.logerr("set_safety FAILED")
            #     return False
        except Exception as e:
            rospy.logerr("set_safety_job: {}".format(e))
            return False

    def set_safety_cb(self, msg):
        rospy.logwarn("RECEIVE SAFETY REQ: {}".format(msg.data))
        safety_type = None
        self.pre_footprint_job_name = None
        self.pre_safety_job_name = msg.data
        if msg.data == "":
            safety_type = json.dumps({"safety": []}) # DISABLE SAFETY
            rospy.logerr("safety_job: DISABLE SAFETY")
            # if self.set_safety_job(safety_disable):
            #     rospy.logwarn("Disable safety")
            #     self.pre_safety_job_name = msg.data
            # else:
            #     rospy.logwarn("Failed to DISABLE SAFETY")
        else:
            safety_job = msg.data
            safety_bson = self.db.getSafety(safety_job)
            if safety_bson != None:
                safety_string = dumps(safety_bson, indent=2, sort_keys=True)
                safety_dict = json.loads(safety_string)

                safety_type = json.dumps({"safety": safety_dict})

                rospy.logerr("safety_job: Set safety before move")

            else:
                safety_type = json.dumps({"safety": []}) # DISABLE SAFETY

                rospy.logerr("safety_job: DISABLE SAFETY")
                rospy.logwarn("Disable safety because not find safety job")

        if self.set_safety_job(safety_type):
            if msg.data != "" and msg.data != "ROTATION":
                self.pre_safety_job_not_disable = msg.data
                self.pre_safety_job_name = msg.data
            else:
                self.pre_safety_job_name = msg.data

    def reset_safety_cb(self, msg):
        safety_type = None
        rospy.logerr("RESET SAFETY")
        self.pre_safety_job_name = self.pre_safety_job_not_disable
        safety_bson = self.db.getSafety(self.pre_safety_job_not_disable)
        if safety_bson != None:
            safety_string = dumps(safety_bson, indent=2, sort_keys=True)
            safety_dict = json.loads(safety_string)

            safety_type = json.dumps({"safety": safety_dict})
            # if self.set_safety_job(safety_json):
            #     rospy.logwarn("Set safety before move")
            # else:
            #     rospy.logwarn("Failed to set safety before move")
        else:
            safety_type = json.dumps({"safety": []})
            rospy.logerr("safety_job: DISABLE SAFETY")
            rospy.logwarn("Disable safety because not find safety job")
        # if self.set_safety_job(safety_type):
        self.set_safety_job(safety_type)
            # if msg.data != "":
            #     rospy.logerr("DONE RESET SAFETY")
            # else:
            #     rospy.logerr("ERROR RESET SAFETY")

if __name__ == "__main__":
    rospy.init_node("set_safety")
    SetSafety()
    rospy.spin()
