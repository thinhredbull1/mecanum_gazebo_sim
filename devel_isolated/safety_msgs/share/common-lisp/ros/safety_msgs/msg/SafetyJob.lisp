; Auto-generated. Do not edit!


(cl:in-package safety_msgs-msg)


;//! \htmlinclude SafetyJob.msg.html

(cl:defclass <SafetyJob> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (footprint
    :reader footprint
    :initarg :footprint
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon))
   (jobs
    :reader jobs
    :initarg :jobs
    :type (cl:vector geometry_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Polygon :initial-element (cl:make-instance 'geometry_msgs-msg:Polygon))))
)

(cl:defclass SafetyJob (<SafetyJob>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyJob>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyJob)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name safety_msgs-msg:<SafetyJob> is deprecated: use safety_msgs-msg:SafetyJob instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SafetyJob>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safety_msgs-msg:header-val is deprecated.  Use safety_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <SafetyJob>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safety_msgs-msg:footprint-val is deprecated.  Use safety_msgs-msg:footprint instead.")
  (footprint m))

(cl:ensure-generic-function 'jobs-val :lambda-list '(m))
(cl:defmethod jobs-val ((m <SafetyJob>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safety_msgs-msg:jobs-val is deprecated.  Use safety_msgs-msg:jobs instead.")
  (jobs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyJob>) ostream)
  "Serializes a message object of type '<SafetyJob>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'footprint) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'jobs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'jobs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyJob>) istream)
  "Deserializes a message object of type '<SafetyJob>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'footprint) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'jobs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'jobs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Polygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyJob>)))
  "Returns string type for a message object of type '<SafetyJob>"
  "safety_msgs/SafetyJob")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyJob)))
  "Returns string type for a message object of type 'SafetyJob"
  "safety_msgs/SafetyJob")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyJob>)))
  "Returns md5sum for a message object of type '<SafetyJob>"
  "f6ba680ca90f32e0964e7c70a10d72b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyJob)))
  "Returns md5sum for a message object of type 'SafetyJob"
  "f6ba680ca90f32e0964e7c70a10d72b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyJob>)))
  "Returns full string definition for message of type '<SafetyJob>"
  (cl:format cl:nil " Header header~%~% geometry_msgs/Polygon footprint  # polygon of footprint~% geometry_msgs/Polygon[] jobs     # polygon of jobs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyJob)))
  "Returns full string definition for message of type 'SafetyJob"
  (cl:format cl:nil " Header header~%~% geometry_msgs/Polygon footprint  # polygon of footprint~% geometry_msgs/Polygon[] jobs     # polygon of jobs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyJob>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'footprint))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'jobs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyJob>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyJob
    (cl:cons ':header (header msg))
    (cl:cons ':footprint (footprint msg))
    (cl:cons ':jobs (jobs msg))
))
