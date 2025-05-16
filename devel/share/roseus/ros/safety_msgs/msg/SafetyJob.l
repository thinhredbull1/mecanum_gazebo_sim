;; Auto-generated. Do not edit!


(when (boundp 'safety_msgs::SafetyJob)
  (if (not (find-package "SAFETY_MSGS"))
    (make-package "SAFETY_MSGS"))
  (shadow 'SafetyJob (find-package "SAFETY_MSGS")))
(unless (find-package "SAFETY_MSGS::SAFETYJOB")
  (make-package "SAFETY_MSGS::SAFETYJOB"))

(in-package "ROS")
;;//! \htmlinclude SafetyJob.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass safety_msgs::SafetyJob
  :super ros::object
  :slots (_header _footprint _jobs ))

(defmethod safety_msgs::SafetyJob
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:footprint __footprint) (instance geometry_msgs::Polygon :init))
    ((:jobs __jobs) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _footprint __footprint)
   (setq _jobs __jobs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:footprint
   (&rest __footprint)
   (if (keywordp (car __footprint))
       (send* _footprint __footprint)
     (progn
       (if __footprint (setq _footprint (car __footprint)))
       _footprint)))
  (:jobs
   (&rest __jobs)
   (if (keywordp (car __jobs))
       (send* _jobs __jobs)
     (progn
       (if __jobs (setq _jobs (car __jobs)))
       _jobs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Polygon _footprint
    (send _footprint :serialization-length)
    ;; geometry_msgs/Polygon[] _jobs
    (apply #'+ (send-all _jobs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Polygon _footprint
       (send _footprint :serialize s)
     ;; geometry_msgs/Polygon[] _jobs
     (write-long (length _jobs) s)
     (dolist (elem _jobs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Polygon _footprint
     (send _footprint :deserialize buf ptr-) (incf ptr- (send _footprint :serialization-length))
   ;; geometry_msgs/Polygon[] _jobs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jobs (let (r) (dotimes (i n) (push (instance geometry_msgs::Polygon :init) r)) r))
     (dolist (elem- _jobs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get safety_msgs::SafetyJob :md5sum-) "f6ba680ca90f32e0964e7c70a10d72b5")
(setf (get safety_msgs::SafetyJob :datatype-) "safety_msgs/SafetyJob")
(setf (get safety_msgs::SafetyJob :definition-)
      " Header header

 geometry_msgs/Polygon footprint  # polygon of footprint
 geometry_msgs/Polygon[] jobs     # polygon of jobs
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :safety_msgs/SafetyJob "f6ba680ca90f32e0964e7c70a10d72b5")


