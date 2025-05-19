

#include "std_msgs/String.h"
#include <boost/thread.hpp>
#include <geometry_msgs/Twist.h>
#include <math.h>
#include <nav_msgs/Odometry.h>
#include <ros/ros.h>
#include <sensor_msgs/Imu.h>
#include <sstream>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Path.h> // Thêm header cho Path
#include <algorithm>

// Include ACL message types (https://bitbucket.org/brettlopez/acl_msgs.git)
#include <path_tracking/data_def.h>

#include <fstream>
#include <iostream>
#include <string>

#include <sys/time.h>
#include <time.h>
std::string line;
std::ofstream in;

ros::Publisher pose_pub;
int flag;
int SMC_on;
int Slip_com;
std::string frame_id;
void initdata()
{
  counter = 0;
  imu_test = 0;
  temp_data = 0;

  traj_counter = 0;
  file_counter = 0;

  slip_l = 0;
  slip_r = 0;
  slip_c = 0;
  slip_cv = 0;

  SMC_S1 = 0;
  SMC_S2 = 0;

  ASMC_dD1_cur = 0;
  ASMC_dD2_cur = 0;
  ASMC_D1_cur = 0;
  ASMC_D2_cur = 0;

  ASMC_D1_accu = 0;
  ASMC_D2_accu = 0;

  time_interval = 0;
  time_file = 0;
  r_path=1.0;
  is_vision_ini = false;

  memset(X_cStor, 0, sizeof(X_cStor));
  memset(Y_cStor, 0, sizeof(Y_cStor));
  memset(Theta_cStor, 0, sizeof(Theta_cStor));
  memset(V_cStor, 0, sizeof(V_cStor));
  memset(W_cStor, 0, sizeof(W_cStor));
  memset(sys_time_his, 0, sizeof(sys_time_his));
  memset(ASMC_dD1, 0, sizeof(ASMC_dD1));
  memset(ASMC_dD2, 0, sizeof(ASMC_dD2));

  memset(Slip_cStor, 0, sizeof(Slip_cStor));
  memset(Slip_cvStor, 0, sizeof(Slip_cvStor));
  memset(Fil_Slip_CStor, 0, sizeof(Fil_Slip_CStor));
  memset(Fil_Slip_CVStor, 0, sizeof(Fil_Slip_CVStor));
  memset(Fil_Slip_C_Sort, 0, sizeof(Fil_Slip_C_Sort));
  memset(Fil_Slip_C_Sort, 0, sizeof(Fil_Slip_C_Sort));
}


class SubscribeAndPublish
{
public:
  SubscribeAndPublish()
  {
 

    pub_ = n_.advertise<geometry_msgs::Twist>("/cmd_vel", 100);
    sub_odom =
        n_.subscribe("/odom_reset", 100, &SubscribeAndPublish::callback3, this);
    path_pub_ = n_.advertise<nav_msgs::Path>("robot_path", 1);
    path_.header.frame_id = frame_id;
    pose_pub = n_.advertise<geometry_msgs::PoseStamped>("desired_pose", 1);
    desired_path_pub_ = n_.advertise<nav_msgs::Path>("desired_path", 1);
    desired_path_.header.frame_id = frame_id;
    is_desired_path_published = false;
    ROS_INFO("path_pub_ initialized with topic: /robot_path");
    ROS_INFO("desired_path_pub_ initialized with topic: /desired_path");
  }





  void callback3(const nav_msgs::Odometry &odom_input);
  void generateDesiredPath();
  void get_desired_pose_circle();
  int node_ok() { return n_.ok(); }

private:
  
  ros::NodeHandle n_;
  ros::Publisher pub_;
  ros::Subscriber sub_vis;
  ros::Subscriber sub_odom;
  ros::Subscriber sub_imu;
  nav_msgs::Path path_;
  
  ros::Publisher path_pub_;
  ros::Publisher desired_path_pub_;
  nav_msgs::Path desired_path_;
  nav_msgs::Path desired_path_follow;
  bool is_desired_path_published;

}; // End of class SubscribeAndPublish


int main(int argc, char **argv)
{
  // Initiate ROS
  ros::init(argc, argv, "subscribe_and_publish");

  // Create an object of class SubscribeAndPublish that will take care of
  // everything
  initdata(); 

  ROS_INFO("rosros1");
  SubscribeAndPublish SAPObject;
  counter = 0;

  ros::MultiThreadedSpinner s(3); 
  ros::spin(s);

  return 0;
}
void SubscribeAndPublish::get_desired_pose_circle()
{
  if (desired_path_.poses.empty())
  {
    ROS_WARN("desired_path_ is empty!");
    return;
  }

  // Tìm điểm gần nhất trên desired_path_
  double min_dist = std::numeric_limits<double>::max();
  size_t closest_idx = 0;
  double cur_x = Robo_State_cur.X_a + Robo_State_init.X_a;
  double cur_y = Robo_State_cur.Y_a + Robo_State_init.Y_a;

  for (size_t i = 0; i < desired_path_.poses.size(); ++i)
  {
    double dx = desired_path_.poses[i].pose.position.x - Robo_State_cur.X_a;
    double dy = desired_path_.poses[i].pose.position.y - Robo_State_cur.Y_a;
    double dist = sqrt(dx * dx + dy * dy);
    if (dist < min_dist)
    {
      min_dist = dist;
      closest_idx = i;
    }
  }

  // Lấy điểm tiếp theo (hoặc điểm gần nhất + 1 nếu muốn robot bám tuần tự)
  size_t target_idx = (closest_idx + 1) % desired_path_.poses.size(); // Điểm tiếp theo trên vòng tròn
  Robo_State_des.X_c = desired_path_.poses[target_idx].pose.position.x;
  Robo_State_des.Y_c = desired_path_.poses[target_idx].pose.position.y;

  tf::Quaternion q(
      desired_path_.poses[target_idx].pose.orientation.x,
      desired_path_.poses[target_idx].pose.orientation.y,
      desired_path_.poses[target_idx].pose.orientation.z,
      desired_path_.poses[target_idx].pose.orientation.w);
  tf::Matrix3x3 m(q);
  double roll, pitch, yaw;
  m.getRPY(roll, pitch, yaw);
  Robo_State_des.Theta_c = yaw;
  tf::Quaternion q2(
      desired_path_.poses[closest_idx].pose.orientation.x,
      desired_path_.poses[closest_idx].pose.orientation.y,
      desired_path_.poses[closest_idx].pose.orientation.z,
      desired_path_.poses[closest_idx].pose.orientation.w);
  tf::Matrix3x3 m2(q2);

  m2.getRPY(roll, pitch, yaw);

  // Tính vận tốc mong muốn dựa trên khoảng cách đến điểm tiếp theo
  double dx = desired_path_.poses[target_idx].pose.orientation.x - desired_path_.poses[closest_idx].pose.orientation.x;
  double dy = desired_path_.poses[target_idx].pose.orientation.y - desired_path_.poses[closest_idx].pose.orientation.y;
  double dtheta = Robo_State_des.Theta_c - yaw;
  if (dtheta > M_PI)
    dtheta -= 2 * M_PI;
  else if (dtheta < -M_PI)
    dtheta += 2 * M_PI;

  double dt = 1.0 / ctrl_rate; // Giả sử ctrl_rate là tần số điều khiển (ví dụ: 30 Hz)
  Robo_State_des.V_c = sqrt(dx * dx + dy * dy) / dt;
  Robo_State_des.W_c = dtheta / dt;

  // Giới hạn vận tốc
  if (Robo_State_des.V_c > 0.2)
    Robo_State_des.V_c = 0.2;
  else if (Robo_State_des.V_c < -0.2)
    Robo_State_des.V_c = -0.2;
  if (Robo_State_des.W_c > 0.2)
    Robo_State_des.W_c = 0.2;
  else if (Robo_State_des.W_c < -0.2)
    Robo_State_des.W_c = -0.2;

  traj_counter++;
}
void SubscribeAndPublish::generateDesiredPath()
{
  desired_path_.poses.clear();
  
  double r = r_path; // Bán kính 1.5m
  int num_points = 360;
  double base_x = Robo_State_init.X_a;
  double base_y = Robo_State_init.Y_a;
  double base_theta = Robo_State_init.Theta_a;
  double delta_theta = 2 * M_PI / num_points;
  for (int i = 0; i < num_points; ++i)
  {
    double theta = 2 * pi * i / num_points; // Góc tăng đều
    double angle = i * delta_theta;
    double x_c_rel = r * sin(theta);
    double y_c_rel = -r * cos(theta) + r;

    geometry_msgs::PoseStamped pose;
    pose.header.stamp = ros::Time::now();
    pose.header.frame_id = frame_id;
    // pose.pose.position.x = cos(base_theta) * x_c_rel - sin(base_theta) * y_c_rel;
    // pose.pose.position.y = sin(base_theta) * x_c_rel + cos(base_theta) * y_c_rel;
    pose.pose.position.x = x_c_rel;
    pose.pose.position.y =  y_c_rel;
    pose.pose.position.z = 0.0;

    tf::Quaternion q;
    q.setRPY(0, 0, base_theta + atan2(y_c_rel - 0.5, x_c_rel) + pi / 2);
    pose.pose.orientation.x = q.x();
    pose.pose.orientation.y = q.y();
    pose.pose.orientation.z = q.z();
    pose.pose.orientation.w = q.w();

    desired_path_follow.poses.push_back(pose);

    pose.pose.position.x = x_c_rel;
    pose.pose.position.y = y_c_rel;
    pose.pose.position.z = 0.0;
    q.setRPY(0, 0, atan2(y_c_rel - 0.5, x_c_rel) + pi / 2);
    pose.pose.orientation.x = q.x();
    pose.pose.orientation.y = q.y();
    pose.pose.orientation.z = q.z();
    pose.pose.orientation.w = q.w();
    desired_path_.poses.push_back(pose);
  }

  desired_path_follow.header.stamp = ros::Time::now();
  ROS_INFO("Generated desired_path_ with %lu poses", desired_path_follow.poses.size());
  desired_path_pub_.publish(desired_path_follow);
  is_desired_path_published = true;
}
void SubscribeAndPublish::callback3(const nav_msgs::Odometry &odom_input)
{

  //  for wheel odometry data
  ros::Rate loop_rate(ctrl_rate);
  geometry_msgs::Twist output;



  if (counter == 0)
  {
    // ROS_INFO("flag is %d", flag);
    // ROS_INFO("SMC_on is %d", SMC_on);
    // ROS_INFO("Slip_com is %d", Slip_com);
  }

  TransStorage(2); // Lưu trữ dữ liệu lịch sử thời gian thực, đơn vị ms

  // Khai báo các biến cần thiết
  double yaw = 0;
  double roll = 0;
  double pitch = 0;
  double qx = 0;
  double qy = 0;
  double qz = 0;
  double qw = 0;

  // Kiểm tra xem dữ liệu odometry có đầy đủ không
  if (!odom_input.pose.pose.position.x == 0 && !odom_input.twist.twist.linear.x == 0)
  { // Kiểm tra dữ liệu hợp lệ
    if (is_vision_ini == false)
    {                                                                // Khởi tạo lần đầu
        n_.getParam("/PidControl/flag", flag);         // Lấy tham số flag
        n_.getParam("/PidControl/SMC_on", SMC_on);     // Lấy tham số SMC_on
        n_.getParam("/PidControl/Slip_com", Slip_com); // Lấy tham số Slip_com
        n_.getParam("/PidControl/frame_id",frame_id);
        n_.getParam("/PidControl/ctrl_rate",ctrl_rate);
        ROS_INFO("FRAME_ID:%s ctr_rate:%d",frame_id.c_str(),ctrl_rate);
      Robo_State_init.X_a = (double)odom_input.pose.pose.position.x; // Đơn vị là m
      Robo_State_init.Y_a = (double)odom_input.pose.pose.position.y;

      // Lấy góc yaw từ quaternion
      qx = (double)odom_input.pose.pose.orientation.x;
      qy = (double)odom_input.pose.pose.orientation.y;
      qz = (double)odom_input.pose.pose.orientation.z;
      qw = (double)odom_input.pose.pose.orientation.w;
      GetEulerAngles(qx, qy, qz, qw, pitch, roll, yaw);
      tf::Quaternion qyaw(qx, qy, qz, qw);
      Robo_State_init.Theta_a = tf::getYaw(qyaw); // Trả về góc yaw theo radian
      ROS_INFO("init:%f", Robo_State_init.Theta_a);
      if (flag == 2)
      {
        if (Robo_State_init.Theta_a > pi)
        {
          Robo_State_init.Theta_a = Robo_State_init.Theta_a - 2 * pi;
        }
        else if (Robo_State_init.Theta_a < -pi)
        {
          Robo_State_init.Theta_a = Robo_State_init.Theta_a + 2 * pi;
        }
      }

      Robo_State_init.dX_a = (double)odom_input.twist.twist.linear.x; // Đơn vị là m/s
      Robo_State_init.dY_a = (double)odom_input.twist.twist.linear.y;

      Robo_State_init.V_a = sqrt(Robo_State_init.dX_a * Robo_State_init.dX_a +
                                 Robo_State_init.dY_a * Robo_State_init.dY_a); // Tính vận tốc tuyến tính
      Robo_State_init.W_a = (double)odom_input.twist.twist.angular.z;          // Vận tốc góc yaw, đơn vị rad/s

      // Giới hạn vận tốc ban đầu
      if (Robo_State_init.V_a >= 0.2)
      {
        Robo_State_init.V_a = 0.2;
      }
      else if (Robo_State_init.V_a <= -0.2)
      {
        Robo_State_init.V_a = -0.2;
      }
      if (Robo_State_init.W_a >= 0.2)
      {
        Robo_State_init.W_a = 0.2;
      }
      else if (Robo_State_init.W_a <= -0.2)
      {
        Robo_State_init.W_a = -0.2;
      }

      is_vision_ini = true; // Đánh dấu đã khởi tạo
      Robo_State_cur.V_c = 0;
      Robo_State_cur.W_c = 0;
      generateDesiredPath();
      // desired_path_.poses.clear();
    }
    else
    {                                                                                     // Cập nhật trạng thái hiện tại
      Robo_State_cur.X_a = (double)odom_input.pose.pose.position.x - Robo_State_init.X_a; // Đơn vị là m
      Robo_State_cur.Y_a = (double)odom_input.pose.pose.position.y - Robo_State_init.Y_a;

      // Lấy góc yaw từ quaternion
      qx = (double)odom_input.pose.pose.orientation.x;
      qy = (double)odom_input.pose.pose.orientation.y;
      qz = (double)odom_input.pose.pose.orientation.z;
      qw = (double)odom_input.pose.pose.orientation.w;
      tf::Quaternion qyaw2(qx, qy, qz, qw);
      Robo_State_cur.Theta_a = (tf::getYaw(qyaw2) - Robo_State_init.Theta_a);

      // if (flag == 1)
      // {
      //   if (traj_counter > 300)
      //   {
      //     if (Robo_State_cur.Theta_a < 0)
      //     {
      //       Robo_State_cur.Theta_a = Robo_State_cur.Theta_a + 2 * pi;
      //     }
      //   }
      // }
      // else if (flag == 2)
      // {
      //   if (Robo_State_cur.Theta_a > pi)
      //   {
      //     Robo_State_cur.Theta_a = Robo_State_cur.Theta_a - 2 * pi;
      //   }
      //   else if (Robo_State_cur.Theta_a < -pi)
      //   {
      //     Robo_State_cur.Theta_a = Robo_State_cur.Theta_a + 2 * pi;
      //   }
      // }

      Robo_State_cur.dX_a = (double)odom_input.twist.twist.linear.x ; // Đơn vị là m/s
      Robo_State_cur.dY_a = (double)odom_input.twist.twist.linear.y;

      Robo_State_cur.V_a = Robo_State_cur.dX_a;
      Robo_State_cur.acc_theta = ((double)odom_input.twist.twist.angular.z - Robo_State_cur.W_a) / (1.0 / 15.0);
      Robo_State_cur.W_a = (double)odom_input.twist.twist.angular.z; // Vận tốc góc yaw

      // Giới hạn vận tốc
      // if (Robo_State_cur.V_a >= 0.2)
      // {
      //   Robo_State_cur.V_a = 0.2;
      // }
      // else if (Robo_State_cur.V_a <= -0.2)
      // {
      //   Robo_State_cur.V_a = -0.2;
      // }
      // if (Robo_State_cur.W_a >= 0.2)
      // {
      //   Robo_State_cur.W_a = 0.2;
      // }
      // else if (Robo_State_cur.W_a <= -0.2)
      // {
      //   Robo_State_cur.W_a = -0.2;
      // }
      geometry_msgs::PoseStamped pose;
      pose.header.stamp = ros::Time::now();
      pose.header.frame_id = frame_id; // Frame cố định, phù hợp với path_
      pose.pose.position.x = Robo_State_cur.X_a + Robo_State_init.X_a;
      ; // Vị trí tuyệt đối
      pose.pose.position.y = Robo_State_cur.Y_a + Robo_State_init.Y_a;
      ;
      pose.pose.position.z = 0.0; // Giả sử robot di chuyển trên mặt phẳng 2D
      tf::Quaternion q2;
      q2.setRPY(0, 0, Robo_State_cur.Theta_a);

      pose.pose.orientation.x = q2.x();
      pose.pose.orientation.y = q2.y();
      pose.pose.orientation.z = q2.z();
      pose.pose.orientation.w = q2.w();

      path_.poses.push_back(pose);           // Thêm pose vào quỹ đạo
      path_.header.stamp = ros::Time::now(); // Cập nhật timestamp cho path

      // Publish quỹ đạo
      path_pub_.publish(path_);
      get_desired_pose();
      publish_pose();
      pose.header.stamp = ros::Time::now();
      pose.header.frame_id = frame_id;
      pose.pose.position.x = Robo_State_des.X_c + Robo_State_init.X_a;
      pose.pose.position.y = Robo_State_des.Y_c + Robo_State_init.Y_a;
      pose.pose.position.z = 0.0;

      tf::Quaternion q;
      q.setRPY(0, 0, Robo_State_des.Theta_c); // Góc tuyệt đối
      pose.pose.orientation.x = q.x();
      pose.pose.orientation.y = q.y();
      pose.pose.orientation.z = q.z();
      pose.pose.orientation.w = q.w();

      // desired_path_.poses.push_back(pose);
      // desired_path_pub_.publish(desired_path_);
      // get_desired_pose_circle();
      get_err_pose(); // Tính sai số giữa mong muốn và thực tế
 

      if (SMC_on == 2)
      {

        // get_SMC_S();
     
        // run_A_SMC();
        // ROS_INFO("OKOK2");

        float p = 2.0;
        
        output.angular.z = Robo_State_cur.W_c;
        output.linear.x = Robo_State_cur.V_c;
      }
      else if (SMC_on == 1)
      {

        // ROS_INFO("OKOK");
        // run_SMC();
  
        output.angular.z = Robo_State_cur.W_c;
        output.linear.x = Robo_State_cur.V_c;
      }
      else if (SMC_on == 0)
      {
        // ROS_INFO("OKOK3");
        // Chuyển động vòng hở
        Robo_State_cur.W_c = Robo_State_des.W_c;
        Robo_State_cur.V_c = Robo_State_des.V_c;
      
        output.angular.z = Robo_State_cur.W_c;
        output.linear.x = Robo_State_cur.V_c;
      }
    }
  }
  else
  { // Nếu dữ liệu không hợp lệ, đặt tất cả về 0
    Robo_State_cur.X_a = 0;
    Robo_State_cur.Y_a = 0;
    Robo_State_cur.Theta_a = 0;
    Robo_State_cur.dX_a = 0;
    Robo_State_cur.dY_a = 0;
    Robo_State_cur.V_a = 0;
    Robo_State_cur.W_a = 0;
  }
  pub_.publish(output);
  desired_path_pub_.publish(desired_path_);
  loop_rate.sleep();
}

void publish_pose()
{
    geometry_msgs::PoseStamped pose_msg;
    pose_msg.header.stamp = ros::Time::now();
    pose_msg.header.frame_id = frame_id; // Frame cố định, có thể đổi thành "odom"

    // Gán vị trí
    pose_msg.pose.position.x = Robo_State_des.X_c;
    pose_msg.pose.position.y = Robo_State_des.Y_c;
    pose_msg.pose.position.z = 0.0; // 2D nên z = 0

    // Chuyển góc Theta_c thành quaternion
    tf2::Quaternion quat;
    quat.setRPY(0, 0, Robo_State_des.Theta_c); // Roll = 0, Pitch = 0, Yaw = Theta_c
    pose_msg.pose.orientation.x = quat.x();
    pose_msg.pose.orientation.y = quat.y();
    pose_msg.pose.orientation.z = quat.z();
    pose_msg.pose.orientation.w = quat.w();
    pose_pub.publish(pose_msg);
}

void get_desired_pose()
{
 
  if (flag == 1)
  {
    
    double r = r_path;
    double t = 60;
    Robo_State_des.X_c = r * sin(traj_counter / ctrl_rate * 2 * pi / t);
    Robo_State_des.Y_c = -r * cos(traj_counter / ctrl_rate * 2 * pi / t) + r;

    TransStorage(4);

    time_interval = sys_time_his[0] - sys_time_his[1];

    double X_d = 0;
    double Y_d = 0;
    X_d =
        CentralDerivative(time_interval, 0, 0); 
    Y_d = CentralDerivative(time_interval, 0, 1);
    Robo_State_des.V_c =
        sqrt(X_d * X_d + Y_d * Y_d) * 1000; 
 
    if (Robo_State_des.V_c >= 0.2)
    {
      Robo_State_des.V_c = 0.2;
    }
    else if (Robo_State_des.V_c <= -0.2)
    {
      Robo_State_des.V_c = -0.2;
    }

    Robo_State_des.Theta_c = atan2(Y_cStor[0] - 0.5, X_cStor[0]);

    Robo_State_des.Theta_c = Robo_State_des.Theta_c + pi / 2;

    if ((Robo_State_des.Theta_c < (0)) &&
        (Robo_State_des.Theta_c >= (-pi / 2)) &&
        (traj_counter > 300)) 
    {
      Robo_State_des.Theta_c = Robo_State_des.Theta_c + 2 * pi;
    }
    if (Robo_State_des.Theta_c > pi)
      Robo_State_des.Theta_c = Robo_State_des.Theta_c - 2 * pi;
    else if (Robo_State_des.Theta_c < -pi)
      Robo_State_des.Theta_c = Robo_State_des.Theta_c + 2 * pi;
    // ROS_INFO("circle Theta_c is: %lf ", (double)Robo_State_des.Theta_c);
    TransStorage(5);
    Robo_State_des.W_c =
        CentralDerivative(time_interval, 0, 2) * 1000;
    if (traj_counter <= 4)
    {
      Robo_State_des.W_c = 0;
    }
    else
    {
      if (Robo_State_des.W_c >= 0.2)
      {
        Robo_State_des.W_c = 0.2;
      }
      else if (Robo_State_des.W_c <= -0.2)
      {
        Robo_State_des.W_c = -0.2;
      }
    }

    TransStorage(1);
  }
  else if (flag == 2)
  {
   
    double r = 0.4;
    Robo_State_des.X_c = 2 * pi * traj_counter / ctrl_rate / 120;
    Robo_State_des.Y_c = r * cos(Robo_State_des.X_c * 3.5) - r;

    TransStorage(4);

    time_interval = sys_time_his[0] - sys_time_his[1];

    double X_d = 0;
    double Y_d = 0;
    X_d =
        CentralDerivative(time_interval, 0, 0); 
    Y_d = CentralDerivative(time_interval, 0, 1);
    Robo_State_des.V_c =
        sqrt(X_d * X_d + Y_d * Y_d) * 1000; 
    // if (Robo_State_des.V_c >= 0.2)
    // {
    //   Robo_State_des.V_c = 0.2;
    // }
    // else if (Robo_State_des.V_c <= -0.2)
    // {
    //   Robo_State_des.V_c = -0.2;
    // }
    Robo_State_des.Theta_c =
        //    atan2(Y_cStor[0] , X_cStor[0]);
        atan2(Y_d, X_d);

    if (Robo_State_des.Theta_c > pi)
    {
      Robo_State_des.Theta_c = Robo_State_des.Theta_c - 2 * pi;
    }
    else if (Robo_State_des.Theta_c < -pi)
    {
      Robo_State_des.Theta_c = Robo_State_des.Theta_c + 2 * pi;
    }

    ROS_INFO("cos Theta_c is: %lf ", (double)Robo_State_des.Theta_c);
    TransStorage(5);
    Robo_State_des.W_c =
        CentralDerivative(time_interval, 0, 2) * 1000; 
    if (traj_counter <= 2)
    {
      Robo_State_des.W_c = 0;
    }
    else
    {
      // if (Robo_State_des.W_c >= 0.2)
      // {
      //   Robo_State_des.W_c = 0.2;
      // }
      // else if (Robo_State_des.W_c <= -0.2)
      // {
      //   Robo_State_des.W_c = -0.2;
      // }
    }

    TransStorage(1);
  }
  traj_counter++;
}
double sat(double s, double eps)
{
  if (fabs(s) > eps)
    return s > 0 ? 1.0 : -1.0;
  return s / eps;
}
void get_err_pose()
{

  Robo_State_cur.X_e =
      cos(Robo_State_des.Theta_c) * (Robo_State_des.X_c - Robo_State_cur.X_a) +
      sin(Robo_State_des.Theta_c) * (Robo_State_des.Y_c - Robo_State_cur.Y_a);
  Robo_State_cur.Y_e =
      -sin(Robo_State_des.Theta_c) * (Robo_State_des.X_c - Robo_State_cur.X_a) +
      cos(Robo_State_des.Theta_c) * (Robo_State_des.Y_c - Robo_State_cur.Y_a);
  Robo_State_cur.Theta_e = (Robo_State_des.Theta_c - Robo_State_cur.Theta_a);
  // ROS_INFO("des_yaw:%f yaw:%f ", Robo_State_des.Theta_c, Robo_State_cur.Theta_a);

  if (flag == 1)
  {
    if (Robo_State_cur.Theta_e > pi)
    {
      Robo_State_cur.Theta_e = Robo_State_cur.Theta_e - 2 * pi;
    }
    else if (Robo_State_cur.Theta_e < -pi)
    {
      Robo_State_cur.Theta_e = Robo_State_cur.Theta_e + 2 * pi;
    }
    else
    {
      Robo_State_cur.Theta_e = Robo_State_cur.Theta_e;
    }
  }

  Robo_State_cur.V_e = Robo_State_des.V_c - Robo_State_cur.V_a;
  Robo_State_cur.W_e = Robo_State_des.W_c - Robo_State_cur.W_a;
}

void TransStorage(int tran_signature)
{
  if (tran_signature == 0)
  {
    for (int i = STOR_LEN - 2; i >= 0;
         i--) 
    {
      X_cStor[i + 1] = X_cStor[i];
      Y_cStor[i + 1] = Y_cStor[i];
      Theta_cStor[i + 1] = Theta_cStor[i];
    }
    X_cStor[0] = Robo_State_des.X_c;
    Y_cStor[0] = Robo_State_des.Y_c;
    Theta_cStor[0] = Robo_State_des.Theta_c;
  }
  else if (tran_signature == 1)
  {
    for (int i = STOR_LEN - 2; i >= 0;
         i--) 
    {
      V_cStor[i + 1] = V_cStor[i];
      W_cStor[i + 1] = W_cStor[i];
    }
    V_cStor[0] = Robo_State_des.V_c;
    W_cStor[0] = Robo_State_des.W_c;
  }
  else if (tran_signature == 2)
  {

    for (int i = STOR_LEN - 2; i >= 0;
         i--)
    {
      sys_time_his[i + 1] = sys_time_his[i];
    }
    sys_time_his[0] = sysLocalTime();
  }
  else if (tran_signature == 3)
  {
    for (int i = STOR_LEN - 2; i >= 0;
         i--)
    {
      ASMC_dD1[i + 1] = ASMC_dD1[i];
      ASMC_dD2[i + 1] = ASMC_dD2[i];
    }
    ASMC_dD1[0] = ASMC_dD1_cur;
    ASMC_dD2[0] = ASMC_dD2_cur;
  }
  else if (tran_signature == 4)
  {
    for (int i = STOR_LEN - 2; i >= 0;
         i--) 
    {
      X_cStor[i + 1] = X_cStor[i];
      Y_cStor[i + 1] = Y_cStor[i];
    }
    X_cStor[0] = Robo_State_des.X_c;
    Y_cStor[0] = Robo_State_des.Y_c;
  }
  else if (tran_signature == 5)
  {
    for (int i = STOR_LEN - 2; i >= 0;
         i--)
    {
      Theta_cStor[i + 1] = Theta_cStor[i];
    }
    Theta_cStor[0] = Robo_State_des.Theta_c;
  }
  else if (tran_signature == 6)
  {
    for (int i = STOR_LEN - 2; i >= 0;
         i--) 
    {
      Slip_cStor[i + 1] = Slip_cStor[i];
    }
    Slip_cStor[0] = slip_c;
  }
  else if (tran_signature == 7)
  {
    for (int i = STOR_LEN - 2; i >= 0;
         i--) 
    {
      Slip_cvStor[i + 1] = Slip_cvStor[i];
    }
    Slip_cvStor[0] = slip_cv;
  }
}


double CentralDerivative(double time, int i, int signature)
{
  double def = 0;
  if (time == 0) //
  {
    time = 1 / ctrl_rate;
  }

  if (signature == 0)
  {
    def = (X_cStor[i] - X_cStor[i + 2]) / (2 * time);
    return def;
  }
  else if (signature == 1)
  {
    def = (Y_cStor[i] - Y_cStor[i + 2]) / (2 * time);
    return def;
  }
  else if (signature == 2)
  {
    def = (Theta_cStor[i] - Theta_cStor[i + 2]) / (2 * time);
    return def;
  }
  else if (signature == 3)
  {
    def = (Slip_cStor[i] - Slip_cStor[i + 2]) / (2 * time);
    return def;
  }
  else
    return 0;
}

double sysLocalTime()
{
  struct timeval tv;
  gettimeofday(&tv, NULL);
  double time_now = 0;

  return time_now = tv.tv_sec * 1000 + tv.tv_usec / 1000; // ms
}


std::string int2string(int value)
{
  std::stringstream ss;
  ss << value;
  return ss.str();
}


void GetEulerAngles(double qx, double qy, double qz, double qw, double &pitch,
                    double &roll, double &yaw) 
{
  const double w2 = qw * qw;
  const double x2 = qx * qx;
  const double y2 = qy * qy;
  const double z2 = qz * qz;
  const double unitLength =
      w2 + x2 + y2 + z2; // Normalised == 1, otherwise correction divisor.
  const double abcd = qw * qx + qy * qz;
  const double eps =
      1e-7;                                 // TODO: pick from your math lib instead of hardcoding.
  const double pi = 3.14159265358979323846; // TODO: pick from your math lib
                                            // instead of hardcoding.

  if (abcd > (0.5 - eps) * unitLength)
  {
    pitch = 2 * atan2(qy, qw);
    roll = pi;
    yaw = 0;
  }
  else if (abcd < (-0.5 + eps) * unitLength)
  {
    pitch = -2 * ::atan2(qy, qw);
    roll = -pi;
    yaw = 0;
  }
  else
  {
    const double adbc = qw * qz - qx * qy;
    const double acbd = qw * qy - qx * qz;
    pitch = ::atan2(2 * adbc, 1 - 2 * (z2 + x2));
    roll = ::asin(2 * abcd / unitLength);
    yaw = ::atan2(2 * acbd, 1 - 2 * (y2 + x2));
  }
}