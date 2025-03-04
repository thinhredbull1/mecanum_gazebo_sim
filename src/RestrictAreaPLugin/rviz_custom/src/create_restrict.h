#include "ros/ros.h"
#include <rviz/tool.h>
#include <geometry_msgs/Point.h>
#include "std_msgs/String.h"
#include "std_msgs/Bool.h"
namespace Ogre
{
	class SceneNode;
	class Vector3;
}

namespace rviz
{
	class VectorProperty;
	class VisualizationManager;
	class ViewportMouseEvent;
	class IntProperty;
	class BoolProperty;
}

namespace rviz_custom
{
	class Restrict : public rviz::Tool
	{
		Q_OBJECT

	public:
		Restrict();
		virtual ~Restrict();

		virtual void initialize();
		virtual int processMouseEvent(rviz::ViewportMouseEvent &event);
		virtual void activate();
		virtual void deactivate();

	public Q_SLOTS:
		virtual void updateTopic();

	private:
		ros::NodeHandle n_;
		ros::Publisher pub_;
		ros::Publisher pub2_;
		ros::Publisher pub3_;
		ros::Publisher pub4_;
		geometry_msgs::Point point_;
		geometry_msgs::Point settings_;
		std_msgs::String finish_flag_;
		std_msgs::Bool cancle_;
		bool operation_;
		rviz::IntProperty *Size_property_;
		rviz::BoolProperty *Remove_all_;
		rviz::BoolProperty *Clear_;
	};

} // end_namespace
