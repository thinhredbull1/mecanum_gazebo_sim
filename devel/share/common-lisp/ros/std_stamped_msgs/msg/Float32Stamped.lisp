; Auto-generated. Do not edit!


(cl:in-package std_stamped_msgs-msg)


;//! \htmlinclude Float32Stamped.msg.html

(cl:defclass <Float32Stamped> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass Float32Stamped (<Float32Stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float32Stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float32Stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_stamped_msgs-msg:<Float32Stamped> is deprecated: use std_stamped_msgs-msg:Float32Stamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Float32Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:stamp-val is deprecated.  Use std_stamped_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Float32Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:data-val is deprecated.  Use std_stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float32Stamped>) ostream)
  "Serializes a message object of type '<Float32Stamped>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float32Stamped>) istream)
  "Deserializes a message object of type '<Float32Stamped>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float32Stamped>)))
  "Returns string type for a message object of type '<Float32Stamped>"
  "std_stamped_msgs/Float32Stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float32Stamped)))
  "Returns string type for a message object of type 'Float32Stamped"
  "std_stamped_msgs/Float32Stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float32Stamped>)))
  "Returns md5sum for a message object of type '<Float32Stamped>"
  "44751333526c169912c53b6cbc0f148f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float32Stamped)))
  "Returns md5sum for a message object of type 'Float32Stamped"
  "44751333526c169912c53b6cbc0f148f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float32Stamped>)))
  "Returns full string definition for message of type '<Float32Stamped>"
  (cl:format cl:nil "time stamp~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float32Stamped)))
  "Returns full string definition for message of type 'Float32Stamped"
  (cl:format cl:nil "time stamp~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float32Stamped>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float32Stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'Float32Stamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
