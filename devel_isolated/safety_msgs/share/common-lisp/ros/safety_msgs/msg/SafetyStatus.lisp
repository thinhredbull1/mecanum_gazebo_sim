; Auto-generated. Do not edit!


(cl:in-package safety_msgs-msg)


;//! \htmlinclude SafetyStatus.msg.html

(cl:defclass <SafetyStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (job
    :reader job
    :initarg :job
    :type cl:fixnum
    :initform 0)
   (fields
    :reader fields
    :initarg :fields
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SafetyStatus (<SafetyStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name safety_msgs-msg:<SafetyStatus> is deprecated: use safety_msgs-msg:SafetyStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safety_msgs-msg:header-val is deprecated.  Use safety_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safety_msgs-msg:id-val is deprecated.  Use safety_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safety_msgs-msg:name-val is deprecated.  Use safety_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'job-val :lambda-list '(m))
(cl:defmethod job-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safety_msgs-msg:job-val is deprecated.  Use safety_msgs-msg:job instead.")
  (job m))

(cl:ensure-generic-function 'fields-val :lambda-list '(m))
(cl:defmethod fields-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safety_msgs-msg:fields-val is deprecated.  Use safety_msgs-msg:fields instead.")
  (fields m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyStatus>) ostream)
  "Serializes a message object of type '<SafetyStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'job)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fields))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'fields))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyStatus>) istream)
  "Deserializes a message object of type '<SafetyStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'job) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fields) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fields)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyStatus>)))
  "Returns string type for a message object of type '<SafetyStatus>"
  "safety_msgs/SafetyStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyStatus)))
  "Returns string type for a message object of type 'SafetyStatus"
  "safety_msgs/SafetyStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyStatus>)))
  "Returns md5sum for a message object of type '<SafetyStatus>"
  "3813fc5ff23effa131d96d27a6d41099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyStatus)))
  "Returns md5sum for a message object of type 'SafetyStatus"
  "3813fc5ff23effa131d96d27a6d41099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyStatus>)))
  "Returns full string definition for message of type '<SafetyStatus>"
  (cl:format cl:nil "Header header~%int8 id~%string name~%int8 job           # current job~%int8[] fields      # fields status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyStatus)))
  "Returns full string definition for message of type 'SafetyStatus"
  (cl:format cl:nil "Header header~%int8 id~%string name~%int8 job           # current job~%int8[] fields      # fields status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'name))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fields) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyStatus
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':job (job msg))
    (cl:cons ':fields (fields msg))
))
