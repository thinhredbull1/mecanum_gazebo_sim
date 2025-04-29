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
        ControlPanel(QWidget *parent = 0) : rviz::Panel(parent)
        {
            // Layout
            QVBoxLayout *layout = new QVBoxLayout;

            // Buttons
            QPushButton *forward_button = new QPushButton("Forward");
            QPushButton *backward_button = new QPushButton("Backward");
            QPushButton *left_button = new QPushButton("Left");
            QPushButton *right_button = new QPushButton("Right");
            QPushButton *toggle_button = new QPushButton("Start");
            QPushButton *stop_but = new QPushButton("Stop");
            QPushButton *Loop_but = new QPushButton("Loop");

            // Hàng 1: Forward
            layout->addWidget(forward_button, 0, Qt::AlignHCenter);

            // Hàng 2: Left - Right
            QHBoxLayout *left_right_layout = new QHBoxLayout;
            left_right_layout->addWidget(left_button);
            left_right_layout->addWidget(right_button);
            layout->addLayout(left_right_layout);

            // Hàng 3: Backward
            layout->addWidget(backward_button, 0, Qt::AlignHCenter);
            // Hàng 4: Start - Stop - Loop
            QHBoxLayout *start_stop_layout = new QHBoxLayout;
            start_stop_layout->addWidget(toggle_button);
            start_stop_layout->addWidget(stop_but);
            start_stop_layout->addWidget(Loop_but);
            layout->addLayout(start_stop_layout);

          

            setLayout(layout);

            // ROS Publishers
            cmd_vel_pub_ = nh_.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
            toggle_pub_ = nh_.advertise<std_msgs::Bool>("/start_topic", 1);
            stop_pub_ = nh_.advertise<std_msgs::Bool>("/stop_topic", 1);
            loop_pub_ = nh_.advertise<std_msgs::Bool>("/loop_topic", 1);

            // Button Connections
            connect(forward_button, SIGNAL(clicked()), this, SLOT(onForwardClicked()));
            connect(backward_button, SIGNAL(clicked()), this, SLOT(onBackwardClicked()));
            connect(left_button, SIGNAL(clicked()), this, SLOT(onLeftClicked()));
            connect(right_button, SIGNAL(clicked()), this, SLOT(onRightClicked()));
            connect(toggle_button, SIGNAL(clicked()), this, SLOT(onToggleClicked()));
            connect(stop_but, SIGNAL(clicked()), this, SLOT(onStopClicked()));
            connect(Loop_but, SIGNAL(clicked()), this, SLOT(onLoopClicked()));
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
            // toggle_state_ = !toggle_state_;
            msg.data = true;
            toggle_pub_.publish(msg);
        }
        void onLoopClicked()
        {
            std_msgs::Bool msg;
            msg.data = true;
            loop_pub_.publish(msg);
        }
        void onStopClicked()
        {
            std_msgs::Bool msg;
            // toggle_state_ = !toggle_state_;
            msg.data = true;
            stop_pub_.publish(msg);
        }
        void startVelocityResetTimer()
        {
            // Start timer with 2 second interval
            velocity_reset_timer_->start(2000); // 2000 milliseconds = 2 seconds
        }

        void resetVelocity()
        {
            // Stop the timer and reset the velocity
            velocity_reset_timer_->stop();
            publishVelocity(0.0, 0.0); // Send velocity 0
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
        ros::Publisher stop_pub_;
        ros::Publisher loop_pub_;
        float speed_move = 0.2;
        bool toggle_state_ = false;
        QTimer *velocity_reset_timer_; // Timer to reset velocity
    };

} // namespace rviz_control

#include <pluginlib/class_list_macros.h>
#include "rviz_control_panel.moc"
PLUGINLIB_EXPORT_CLASS(rviz_control::ControlPanel, rviz::Panel)