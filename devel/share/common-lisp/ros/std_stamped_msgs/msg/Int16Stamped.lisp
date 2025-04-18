; Auto-generated. Do not edit!


(cl:in-package std_stamped_msgs-msg)


;//! \htmlinclude Int16Stamped.msg.html

(cl:defclass <Int16Stamped> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Int16Stamped (<Int16Stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int16Stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int16Stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_stamped_msgs-msg:<Int16Stamped> is deprecated: use std_stamped_msgs-msg:Int16Stamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Int16Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:stamp-val is deprecated.  Use std_stamped_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Int16Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:data-val is deprecated.  Use std_stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int16Stamped>) ostream)
  "Serializes a message object of type '<Int16Stamped>"
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
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int16Stamped>) istream)
  "Deserializes a message object of type '<Int16Stamped>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int16Stamped>)))
  "Returns string type for a message object of type '<Int16Stamped>"
  "std_stamped_msgs/Int16Stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int16Stamped)))
  "Returns string type for a message object of type 'Int16Stamped"
  "std_stamped_msgs/Int16Stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int16Stamped>)))
  "Returns md5sum for a message object of type '<Int16Stamped>"
  "946ed1a76e3f21c289a4a6b1e0e2a6f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int16Stamped)))
  "Returns md5sum for a message object of type 'Int16Stamped"
  "946ed1a76e3f21c289a4a6b1e0e2a6f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int16Stamped>)))
  "Returns full string definition for message of type '<Int16Stamped>"
  (cl:format cl:nil "time stamp~%int16 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int16Stamped)))
  "Returns full string definition for message of type 'Int16Stamped"
  (cl:format cl:nil "time stamp~%int16 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int16Stamped>))
  (cl:+ 0
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int16Stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'Int16Stamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
