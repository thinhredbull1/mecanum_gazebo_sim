#ifndef CIRCLE_PLANNER_H_ 
#define CIRCLE_PLANNER_H_

#include <ros/ros.h>
 #include <nav_core/base_global_planner.h> 
 #include <nav_msgs/Path.h> 
 #include <geometry_msgs/PoseStamped.h>
 #include <costmap_2d/costmap_2d_ros.h>

namespace global_planner_path
{
    class CirclePlanner : public nav_core::BaseGlobalPlanner
    {
    public:
        CirclePlanner();
        void initialize(std::string name, costmap_2d::Costmap2DROS *costmap_ros);
        bool makePlan(const geometry_msgs::PoseStamped &start, const geometry_msgs::PoseStamped &goal, std::vector<geometry_msgs::PoseStamped> &plan);

    private:
        ros::Publisher plan_pub_;
        double radius_;
        int num_points_;
        int plan_counter_;
        bool use_zigzag_;
        double zigzag_amplitude_;
        double zigzag_segment_length_;
        double amplitude_;
        double wavelength_;
        bool use_sine_;
        std::string frame_id_;
    };
} // namespace custom_global_planner

#endif