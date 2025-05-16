#include <global_planner_path/circle_planner.h>
#include <tf/transform_datatypes.h>
#include <angles/angles.h>
#include <math.h>

namespace global_planner_path
{

  CirclePlanner::CirclePlanner() : radius_(2.0), num_points_(100), frame_id_("map"),
                                   use_sine_(false), amplitude_(1.0), wavelength_(4.0),
                                   use_zigzag_(false), zigzag_amplitude_(1.0), zigzag_segment_length_(2.0),
                                   plan_counter_(0) {}

  void CirclePlanner::initialize(std::string name, costmap_2d::Costmap2DROS *costmap_ros)
  {
    ros::NodeHandle private_nh("~/" + name);
    private_nh.param("radius", radius_, 2.0);
    private_nh.param("num_points", num_points_, 100);
    private_nh.param("frame_id", frame_id_, std::string("map"));
    private_nh.param("use_sine", use_sine_, false);
    private_nh.param("amplitude", amplitude_, 1.0);
    private_nh.param("wavelength", wavelength_, 4.0);
    private_nh.param("use_zigzag", use_zigzag_, false);
    private_nh.param("zigzag_amplitude", zigzag_amplitude_, 1.0);
    private_nh.param("zigzag_segment_length", zigzag_segment_length_, 2.0);
    plan_pub_ = private_nh.advertise<nav_msgs::Path>("plan", 1);
    ROS_INFO("CirclePlanner initialized with radius: %f, points: %d, frame: %s, use_sine: %d, amplitude: %f, wavelength: %f, use_zigzag: %d, zigzag_amplitude: %f, zigzag_segment_length: %f",
             radius_, num_points_, frame_id_.c_str(), use_sine_, amplitude_, wavelength_, use_zigzag_, zigzag_amplitude_, zigzag_segment_length_);
  }

  bool CirclePlanner::makePlan(const geometry_msgs::PoseStamped &start,
                               const geometry_msgs::PoseStamped &goal,
                               std::vector<geometry_msgs::PoseStamped> &plan)
  {
    plan.clear();
    nav_msgs::Path path;
    path.header.frame_id = frame_id_;
    path.header.stamp = ros::Time::now();

    // Increment plan counter
    plan_counter_++;
    ROS_INFO("Generating plan number: %d, start at (%f, %f)",
             plan_counter_, start.pose.position.x, start.pose.position.y);

    // Fixed center at (0, 0)
    double center_x = 0.0;
    double center_y = 0.0;
    bool reverse = false;

    if (use_zigzag_)
    {
      // Generate zigzag path with three segments
      double robot_x = start.pose.position.x;
      double robot_y = start.pose.position.y;
      double robot_yaw = tf::getYaw(start.pose.orientation);
      ROS_INFO("Robot at (%f, %f), yaw: %f radians", robot_x, robot_y, robot_yaw);

      // Check if robot is near the last planned point (goal reached)
      if (!plan.empty() && !plan.back().pose.position.x == 0.0 && !plan.back().pose.position.y == 0.0)
      {
        const geometry_msgs::PoseStamped &last_pose = plan.back();
        double dist_to_last = sqrt(pow(robot_x - last_pose.pose.position.x, 2) +
                                   pow(robot_y - last_pose.pose.position.y, 2));
        if (dist_to_last < 0.1)
        {
          ROS_INFO("Robot has reached the goal (distance: %f). No new plan generated.", dist_to_last);
          return true; // No need to generate a new plan
        }
      }

      // Initialize zigzag parameters
      double segment_length = zigzag_segment_length_ / 3.0; // Divide into three segments
      int points_per_segment = num_points_ / 3;             // Points for each segment
      double x_step = segment_length / points_per_segment;
      double start_x = robot_x;                                       // Start zigzag at robot's current x
      double start_y = robot_y;                                       // Start zigzag at robot's current y
      bool reverse = (robot_yaw < -M_PI / 2 || robot_yaw > M_PI / 2); // Reverse if robot faces backward

      ROS_INFO("Generating zigzag with center (%f, %f), amplitude %f, segment length %f, %d points per segment",
               center_x, center_y, zigzag_amplitude_, segment_length, points_per_segment);

      if (!reverse)
      {
        double x = start_x;
        double y = start_y;
        int segment = 0; // Tracks current segment (0: up, 1: down, 2: up)
        for (int i = 0; i < num_points_; ++i)
        {
          geometry_msgs::PoseStamped pose;
          pose.header.frame_id = frame_id_;
          pose.header.stamp = ros::Time::now();

          // Calculate y based on segment
          double progress = (i % points_per_segment) / (double)points_per_segment; // Progress within segment (0 to 1)
          if (segment == 0)                                                        // Up
            y = start_y + progress * zigzag_amplitude_;
          else if (segment == 1) // Down
            y = start_y + zigzag_amplitude_ - progress * zigzag_amplitude_ * 2;
          else // Up again
            y = start_y - zigzag_amplitude_ + progress * zigzag_amplitude_ * 2;

          pose.pose.position.x = x;
          pose.pose.position.y = y;
          pose.pose.position.z = 0.0;

          // Set orientation based on segment direction
          double dy_dx = (segment == 0 || segment == 2) ? (zigzag_amplitude_ / segment_length) : (-zigzag_amplitude_ / segment_length);
          double yaw = atan2(dy_dx, 1.0);
          pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);

          plan.push_back(pose);
          path.poses.push_back(pose);

          // Update x and switch segment
          x += x_step;
          if ((i + 1) % points_per_segment == 0)
            segment = (segment + 1) % 3; // Cycle through segments
        }
      }
      else
      {
        double x = start_x + zigzag_segment_length_;
        double y = start_y;
        int segment = 2; // Start with up segment for reverse
        for (int i = num_points_ - 1; i >= 0; --i)
        {
          geometry_msgs::PoseStamped pose;
          pose.header.frame_id = frame_id_;
          pose.header.stamp = ros::Time::now();

          double progress = (i % points_per_segment) / (double)points_per_segment;
          if (segment == 0) // Up
            y = start_y + progress * zigzag_amplitude_;
          else if (segment == 1) // Down
            y = start_y + zigzag_amplitude_ - progress * zigzag_amplitude_ * 2;
          else // Up again
            y = start_y - zigzag_amplitude_ + progress * zigzag_amplitude_ * 2;

          pose.pose.position.x = x;
          pose.pose.position.y = y;
          pose.pose.position.z = 0.0;

          double dy_dx = (segment == 0 || segment == 2) ? (zigzag_amplitude_ / segment_length) : (-zigzag_amplitude_ / segment_length);
          double yaw = atan2(dy_dx, 1.0);
          pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);

          plan.push_back(pose);
          path.poses.push_back(pose);

          x -= x_step;
          if (i % points_per_segment == 0)
            segment = (segment - 1 + 3) % 3; // Cycle backward
        }
      }
    }
    else if (use_sine_)
    {
      // Generate sinusoidal path
      double x_step = wavelength_ / num_points_;
      double robot_x = start.pose.position.x;
      double robot_y = start.pose.position.y;
      double start_x = 0;
      double start_y = amplitude_ * sin(2 * M_PI * start_x / wavelength_);
      double distance_to_start = sqrt(pow(robot_x - start_x, 2) + pow(robot_y - start_y, 2));

      if (distance_to_start > 0.2)
      {
        reverse = true;
      }

      ROS_INFO("Generating sine with center (%f, %f), amplitude %f, wavelength %f, %d points",
               center_x, center_y, amplitude_, wavelength_, num_points_);

      if (!reverse)
        for (int i = 0; i < num_points_; ++i)
        {
          double x = i * x_step;
          double y = amplitude_ * sin(2 * M_PI * x / wavelength_);
          geometry_msgs::PoseStamped pose;
          pose.header.frame_id = frame_id_;
          pose.header.stamp = ros::Time::now();
          pose.pose.position.x = center_x + x;
          pose.pose.position.y = center_y + y;
          pose.pose.position.z = 0.0;

          double dy_dx = amplitude_ * (2 * M_PI / wavelength_) * cos(2 * M_PI * x / wavelength_);
          double yaw = atan2(dy_dx, 1.0);
          pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);
          plan.push_back(pose);
          path.poses.push_back(pose);
        }
      else
      {
        for (int i = num_points_ - 1; i >= 0; --i)
        {
          double x = i * x_step;
          double y = amplitude_ * sin(2 * M_PI * x / wavelength_);
          geometry_msgs::PoseStamped pose;
          pose.header.frame_id = frame_id_;
          pose.header.stamp = ros::Time::now();
          pose.pose.position.x = center_x + x;
          pose.pose.position.y = center_y + y;
          pose.pose.position.z = 0.0;

          double dy_dx = amplitude_ * (2 * M_PI / wavelength_) * cos(2 * M_PI * x / wavelength_);
          double yaw = atan2(dy_dx, 1.0);
          pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);
          plan.push_back(pose);
          path.poses.push_back(pose);
        }
      }
    }
    else
    {
      // Generate circular path
      double angle_step = 2 * M_PI / num_points_;
      double robot_x = start.pose.position.x;
      double robot_y = start.pose.position.y;
      double start_angle = tf::getYaw(start.pose.orientation);
      double start_x = radius_ * cos(start_angle);
      double start_y = radius_ * sin(start_angle);
      double distance_to_start = sqrt(pow(robot_x - start_x, 2) + pow(robot_y - start_y, 2));
      ROS_INFO("Generating circle with center (%f, %f), radius %f, %d points, starting at angle %f",
               center_x, center_y, radius_, num_points_, start_angle);
      if (distance_to_start > 0.2)
      {
        reverse = true;
        ROS_INFO("REVERSE");
      }

      if (!reverse)
      {
        for (int i = 0; i < num_points_; ++i)
        {
          double angle = start_angle + i * angle_step;
          geometry_msgs::PoseStamped pose;
          pose.header.frame_id = frame_id_;
          pose.header.stamp = ros::Time::now();
          pose.pose.position.x = center_x + radius_ * cos(angle);
          pose.pose.position.y = center_y + radius_ * sin(angle);
          pose.pose.position.z = 0.0;

          double yaw = angle + M_PI / 2;
          pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);
          plan.push_back(pose);
          path.poses.push_back(pose);
        }
      }
      else
      {
        for (int i = num_points_ - 1; i >= 0; --i)
        {
          double angle = start_angle + i * angle_step;
          geometry_msgs::PoseStamped pose;
          pose.header.frame_id = frame_id_;
          pose.header.stamp = ros::Time::now();
          pose.pose.position.x = center_x + radius_ * cos(angle);
          pose.pose.position.y = center_y + radius_ * sin(angle);
          pose.pose.position.z = 0.0;

          double yaw = angle + M_PI / 2;
          pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);
          plan.push_back(pose);
          path.poses.push_back(pose);
        }
      }
    }

    // Log final position of plan
    if (!plan.empty())
    {
      const geometry_msgs::PoseStamped &final_pose = plan.back();
      ROS_INFO("Final plan position: x=%f, y=%f, z=%f",
               final_pose.pose.position.x,
               final_pose.pose.position.y,
               final_pose.pose.position.z);
    }
    else
    {
      ROS_WARN("Plan is empty, no final position to log");
    }

    ROS_INFO("Plan generated with %lu points", plan.size());
    plan_pub_.publish(path);
    return true;
  }

} // namespace global_planner_path

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(global_planner_path::CirclePlanner, nav_core::BaseGlobalPlanner)