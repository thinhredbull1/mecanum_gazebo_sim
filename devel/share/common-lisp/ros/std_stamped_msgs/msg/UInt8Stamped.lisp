; Auto-generated. Do not edit!


(cl:in-package std_stamped_msgs-msg)


;//! \htmlinclude UInt8Stamped.msg.html

(cl:defclass <UInt8Stamped> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UInt8Stamped (<UInt8Stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UInt8Stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UInt8Stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_stamped_msgs-msg:<UInt8Stamped> is deprecated: use std_stamped_msgs-msg:UInt8Stamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <UInt8Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:stamp-val is deprecated.  Use std_stamped_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UInt8Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:data-val is deprecated.  Use std_stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UInt8Stamped>) ostream)
  "Serializes a message object of type '<UInt8Stamped>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UInt8Stamped>) istream)
  "Deserializes a message object of type '<UInt8Stamped>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UInt8Stamped>)))
  "Returns string type for a message object of type '<UInt8Stamped>"
  "std_stamped_msgs/UInt8Stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UInt8Stamped)))
  "Returns string type for a message object of type 'UInt8Stamped"
  "std_stamped_msgs/UInt8Stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UInt8Stamped>)))
  "Returns md5sum for a message object of type '<UInt8Stamped>"
  "cdbf359037ab2066aa91823b13d9d14e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UInt8Stamped)))
  "Returns md5sum for a message object of type 'UInt8Stamped"
  "cdbf359037ab2066aa91823b13d9d14e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UInt8Stamped>)))
  "Returns full string definition for message of type '<UInt8Stamped>"
  (cl:format cl:nil "time stamp~%uint8 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UInt8Stamped)))
  "Returns full string definition for message of type 'UInt8Stamped"
  (cl:format cl:nil "time stamp~%uint8 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UInt8Stamped>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UInt8Stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'UInt8Stamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
