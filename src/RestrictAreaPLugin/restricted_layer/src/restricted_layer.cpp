#include <pluginlib/class_list_macros.h>
#include <restricted_layer/restricted_layer.h>
// #include <rviz/visualization_manager.h>
// #include <rviz/frame_manager.h>
// #include "rviz/display_context.h"

PLUGINLIB_EXPORT_CLASS(restrict_area::RestrictedLayer, costmap_2d::Layer)

using costmap_2d::LETHAL_OBSTACLE;
using costmap_2d::NO_INFORMATION;

namespace restrict_area
{

RestrictedLayer::RestrictedLayer()
{
  mbx = 0;
  mby = 0;
  mkx = 0;
  mky = 0;
  ros::NodeHandle nh("~/" + name_);
  sub_ = nh.subscribe("/mouse_location_backup", 1, &RestrictedLayer::Callback,
                      this);
  sub2_ =
      nh.subscribe("/restrict_settings", 1, &RestrictedLayer::setValue, this);
  pub_ = n_.advertise<geometry_msgs::Point>("/test", 1);
  dsrv_ = new dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig>(nh);
  dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig>::CallbackType
      cb = boost::bind(&RestrictedLayer::reconfigureCB, this, _1, _2);
  dsrv_->setCallback(cb);
}

RestrictedLayer::~RestrictedLayer() {}

void RestrictedLayer::onInitialize()
{
  default_value_ = NO_INFORMATION;
  matchSize();
  settings_.x = 1;
  settings_.y = 0;
  settings_.z = 0;

  // sub_ = nh.subscribe("/mouse_location", 1, &RestrictedLayer::Callback, this);
}
void RestrictedLayer::setValue(const geometry_msgs::Point::ConstPtr& data)
{
  settings_.x = data->x;  // Size
  settings_.y = data->y;  // Clear all
  settings_.z = data->z;  // clear
}
void RestrictedLayer::Callback(
    const restricted_layer::DataArray::ConstPtr& array_world)
{
  for (int i = 0; i < array_world->data.size(); i++)
  {
    createCircle(array_world->data[i].x, array_world->data[i].y, settings_.x,
                 settings_.z);
    // point_.x = array_world->data[i].x; // world->data[0][0];
    // point_.y = array_world->data[i].y;
    // point_.z = 0.0;
    // pub_.publish(point_);
  }
}

void RestrictedLayer::matchSize()
{
  Costmap2D* master = layered_costmap_->getCostmap();
  resizeMap(master->getSizeInCellsX(), master->getSizeInCellsY(),
            master->getResolution(), master->getOriginX(),
            master->getOriginY());
}
void RestrictedLayer::reconfigureCB(costmap_2d::GenericPluginConfig& config,
                                    uint32_t level)
{
  enabled_ = config.enabled;
}
void RestrictedLayer::updateBounds(double robot_x, double robot_y,
                                   double robot_yaw, double* min_x,
                                   double* min_y, double* max_x, double* max_y)
{
  Costmap2D* master = layered_costmap_->getCostmap();

  *min_x = -(master->getSizeInCellsX() / (master->getResolution()));
  *min_y = -(master->getSizeInCellsY() / (master->getResolution()));
  *max_x = (master->getSizeInCellsX() / (master->getResolution()));
  *max_y = (master->getSizeInCellsY() / (master->getResolution()));
}

void RestrictedLayer::updateCosts(costmap_2d::Costmap2D& master_grid, int min_i,
                                  int min_j, int max_i, int max_j)
{
  if (!enabled_)
    return;

  for (int j = min_j; j < max_j; j++)
  {
    for (int i = min_i; i < max_i; i++)
    {
      int index = getIndex(i, j);
      if (costmap_[index] == NO_INFORMATION)
        continue;
      master_grid.setCost(i, j, costmap_[index]);
    }
  }
}

void RestrictedLayer::createCircle(double x_center, double y_center, int r,
                                   bool operation)
{
  Costmap2D* master = layered_costmap_->getCostmap();
  if (!settings_.y)
  {
    if (!settings_.z)
    {
      for (int i = 0; i < r; i++)
      {
        for (int j = 0; j < r; j++)
        {
          if (worldToMap((x_center + (i * master->getResolution())),
                         (y_center + (master->getResolution() * j)), mx, my))
          {
            if (mbx < mx)
              mbx = mx;
            if (mkx > mx)
              mkx = mx;
            if (mby < my)
              mby = my;
            if (mky > my)
              mky = my;
            setCost(mx, my, LETHAL_OBSTACLE);
          }
        }
      }
    }
    else
    {
      for (int i = mkx; i <= mbx; i++)
      {
        for (int j = mky; j <= mby; j++)
          setCost(i, j, NO_INFORMATION);
      }
      settings_.z = false;
      // for (int i = 0; i < r; i++)
      // {
      //   for (int j = 0; j < r; j++)
      //   {
      //     if (worldToMap((x_center + (i * master->getResolution())), (y_center + (master->getResolution() * j)), mx, my))
      //     {
      //       if (mbx < mx)
      //         mbx = mx;
      //       if (mkx > mx)
      //         mkx = mx;
      //       if (mby < my)
      //         mby = my;
      //       if (mky > my)
      //         mky = my;
      //       setCost(mx, my, LETHAL_OBSTACLE);
      //     }
      //   }
      // }
    }
  }
  else
  {
    for (int i = mkx; i <= mbx; i++)
    {
      for (int j = mky; j <= mby; j++)
        setCost(i, j, NO_INFORMATION);
    }
  }
}
}  // namespace restrict_area
int main(int argc, char** argv)
{
  ros::init(argc, argv, "init_cost_map");
  restrict_area::RestrictedLayer nc = restrict_area::RestrictedLayer();
  ros::spin();
}
