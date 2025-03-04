#include "create_restrict.h"
#include <OGRE/OgreSceneNode.h>
#include <OGRE/OgreSceneManager.h>
#include <OGRE/OgreEntity.h>
#include <ros/console.h>
#include <rviz/viewport_mouse_event.h>
#include <rviz/visualization_manager.h>
#include <rviz/mesh_loader.h>
#include <rviz/geometry.h>
#include <rviz/properties/vector_property.h>
#include "rviz/display_context.h"
#include "rviz/properties/int_property.h"
#include "rviz/properties/bool_property.h"
#include <pluginlib/class_list_macros.h>

PLUGINLIB_EXPORT_CLASS(rviz_custom::Restrict, rviz::Tool)

namespace rviz_custom
{

    Restrict::Restrict()
    {

        shortcut_key_ = 'g';
        settings_.x = 1;     // size
        settings_.y = false; // clear
        settings_.z = false; // color

        Size_property_ = new rviz::IntProperty("Size", 1, "Size of drawing",
                                               getPropertyContainer(), SLOT(updateTopic()), this);

        Remove_all_ = new rviz::BoolProperty("Clear All", false, "State of Clear or Draw ",
                                             getPropertyContainer(), SLOT(updateTopic()), this);
        Clear_ = new rviz::BoolProperty("Clear", false, "State of Clear or Draw ",
                                        getPropertyContainer(), SLOT(updateTopic()), this);
    }

    Restrict::~Restrict() {}

    void Restrict::updateTopic()
    {
        // settings_.x = Size_property_->getInt();
        settings_.y = Remove_all_->getBool(); // clear all
        settings_.z = Clear_->getBool();      // clear
    }

    void Restrict::initialize()
    {
        pub_ = n_.advertise<geometry_msgs::Point>("/mouse_location", 1);
        pub2_ = n_.advertise<geometry_msgs::Point>("/restrict_settings", 1);
        pub3_ = n_.advertise<std_msgs::String>("/finish_flag", 1);
        pub4_ = n_.advertise<std_msgs::Bool>("/cancle_restrict_edit", 1);
    }
    void Restrict::activate()
    {
        initialize();
        ROS_INFO("Initialize is starting!");
        operation_ = false;
    }

    void Restrict::deactivate() {}

    int Restrict::processMouseEvent(rviz::ViewportMouseEvent &event)
    {
        int flag = 0;
        static bool draw_allowed_flag = false;
        static bool enable = false;
        Ogre::Vector3 intersection;
        Ogre::Plane ground_plane(Ogre::Vector3::UNIT_Z, 0.0f);
        try
        {
            // added by POJ , trying to draw only when LMB ist down
            if (event.rightDown() == true)
            {
                if (enable == true)
                {
                    enable = false;
                    draw_allowed_flag = true;
                }
            }
            if (event.rightUp() == true)
            {
                enable = true;
            }
            // ----------------------------------------------------

            if (rviz::getPointOnPlaneFromWindowXY(event.viewport, ground_plane, event.x, event.y, intersection))
            {
                if (draw_allowed_flag == true)
                { // added by POJ , trying to draw only when LMB ist down
                    draw_allowed_flag = false;
                    point_.x = intersection.x;
                    point_.y = intersection.y;
                    point_.z = operation_;
                    pub_.publish(point_);
                    pub2_.publish(settings_);
                }
            }
        }
        catch (int a)
        {
            ROS_ERROR("Error Occured!!");
            return 0;
        }

        if (event.middleDown())
        {
            finish_flag_.data = "ok";
            pub2_.publish(settings_);
            pub3_.publish(finish_flag_);
        }
        else if (event.leftDown())
        {
            // finish_flag_.data = "ok";
            // pub2_.publish(settings_);
            // pub3_.publish(finish_flag_);
            // ros::Duration(0.1).sleep();
            cancle_.data = true;
            pub4_.publish(cancle_);
            flag |= Finished;
        }

        return flag;
    }
}
