#include <ros/ros.h>
#include <rviz/panel.h>
#include <QPushButton>
#include <QVBoxLayout>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Bool.h>
#include <QTimer>  
namespace rviz_control
{
class ControlPanel : public rviz::Panel
{
Q_OBJECT
public:
    ControlPanel(QWidget* parent = 0) : rviz::Panel(parent)
    {
        // Layout
        QVBoxLayout* layout = new QVBoxLayout;

        // Buttons
        QPushButton* forward_button = new QPushButton("Forward");
        QPushButton* backward_button = new QPushButton("Backward");
        QPushButton* left_button = new QPushButton("Left");
        QPushButton* right_button = new QPushButton("Right");
        QPushButton* toggle_button = new QPushButton("Toggle True/False");

        layout->addWidget(forward_button);
        layout->addWidget(backward_button);
        layout->addWidget(left_button);
        layout->addWidget(right_button);
        layout->addWidget(toggle_button);

        setLayout(layout);

        // ROS Publishers
        cmd_vel_pub_ = nh_.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
        toggle_pub_ = nh_.advertise<std_msgs::Bool>("/toggle_topic", 1);

        // Button Connections
        connect(forward_button, SIGNAL(clicked()), this, SLOT(onForwardClicked()));
        connect(backward_button, SIGNAL(clicked()), this, SLOT(onBackwardClicked()));
        connect(left_button, SIGNAL(clicked()), this, SLOT(onLeftClicked()));
        connect(right_button, SIGNAL(clicked()), this, SLOT(onRightClicked()));
        connect(toggle_button, SIGNAL(clicked()), this, SLOT(onToggleClicked()));
        velocity_reset_timer_ = new QTimer(this);
        connect(velocity_reset_timer_, &QTimer::timeout, this, &ControlPanel::resetVelocity);
    }

public Q_SLOTS:
    void onForwardClicked()
    {

        publishVelocity(speed_move, 0.0);
        startVelocityResetTimer();
    }
    void onBackwardClicked()
    {
        publishVelocity(-speed_move, 0.0);
        startVelocityResetTimer();
    }
    void onLeftClicked()
    {
        publishVelocity(0.0, speed_move);
        startVelocityResetTimer();
    }
    void onRightClicked()
    {
        publishVelocity(0.0, -speed_move);
        startVelocityResetTimer();
    }
    void onToggleClicked()
    {
        std_msgs::Bool msg;
        toggle_state_ = !toggle_state_;
        msg.data = toggle_state_;
        toggle_pub_.publish(msg);
    }
     void startVelocityResetTimer()
    {
        // Start timer with 2 second interval
        velocity_reset_timer_->start(2000);  // 2000 milliseconds = 2 seconds
    }

     void resetVelocity()
    {
        // Stop the timer and reset the velocity
        velocity_reset_timer_->stop();
        publishVelocity(0.0, 0.0);  // Send velocity 0
    }

private:
    void publishVelocity(double linear, double linear_y)
    {
        geometry_msgs::Twist msg;
        msg.linear.x = linear;
        msg.linear.y = linear_y;
        cmd_vel_pub_.publish(msg);
    }

    ros::NodeHandle nh_;
    ros::Publisher cmd_vel_pub_;
    ros::Publisher toggle_pub_;
    float speed_move=0.2;
    bool toggle_state_ = false;
    QTimer* velocity_reset_timer_;  // Timer to reset velocity
};

} // namespace rviz_control

#include <pluginlib/class_list_macros.h>
#include "rviz_control_panel.moc"
PLUGINLIB_EXPORT_CLASS(rviz_control::ControlPanel, rviz::Panel)
