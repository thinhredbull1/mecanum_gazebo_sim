; Auto-generated. Do not edit!


(cl:in-package std_stamped_msgs-msg)


;//! \htmlinclude DurationStamped.msg.html

(cl:defclass <DurationStamped> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:real
    :initform 0))
)

(cl:defclass DurationStamped (<DurationStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DurationStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DurationStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_stamped_msgs-msg:<DurationStamped> is deprecated: use std_stamped_msgs-msg:DurationStamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <DurationStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:stamp-val is deprecated.  Use std_stamped_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <DurationStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:data-val is deprecated.  Use std_stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DurationStamped>) ostream)
  "Serializes a message object of type '<DurationStamped>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'data)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'data) (cl:floor (cl:slot-value msg 'data)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DurationStamped>) istream)
  "Deserializes a message object of type '<DurationStamped>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DurationStamped>)))
  "Returns string type for a message object of type '<DurationStamped>"
  "std_stamped_msgs/DurationStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DurationStamped)))
  "Returns string type for a message object of type 'DurationStamped"
  "std_stamped_msgs/DurationStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DurationStamped>)))
  "Returns md5sum for a message object of type '<DurationStamped>"
  "d57c44e71dec11e6006b30f746c83278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DurationStamped)))
  "Returns md5sum for a message object of type 'DurationStamped"
  "d57c44e71dec11e6006b30f746c83278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DurationStamped>)))
  "Returns full string definition for message of type '<DurationStamped>"
  (cl:format cl:nil "time stamp~%duration data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DurationStamped)))
  "Returns full string definition for message of type 'DurationStamped"
  (cl:format cl:nil "time stamp~%duration data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DurationStamped>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DurationStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'DurationStamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
