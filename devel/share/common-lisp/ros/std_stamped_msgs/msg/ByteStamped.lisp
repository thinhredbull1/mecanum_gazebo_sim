; Auto-generated. Do not edit!


(cl:in-package std_stamped_msgs-msg)


;//! \htmlinclude ByteStamped.msg.html

(cl:defclass <ByteStamped> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass ByteStamped (<ByteStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ByteStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ByteStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_stamped_msgs-msg:<ByteStamped> is deprecated: use std_stamped_msgs-msg:ByteStamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ByteStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:stamp-val is deprecated.  Use std_stamped_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ByteStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:data-val is deprecated.  Use std_stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ByteStamped>) ostream)
  "Serializes a message object of type '<ByteStamped>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ByteStamped>) istream)
  "Deserializes a message object of type '<ByteStamped>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ByteStamped>)))
  "Returns string type for a message object of type '<ByteStamped>"
  "std_stamped_msgs/ByteStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ByteStamped)))
  "Returns string type for a message object of type 'ByteStamped"
  "std_stamped_msgs/ByteStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ByteStamped>)))
  "Returns md5sum for a message object of type '<ByteStamped>"
  "f23209498cbb58123c2487d000aeddc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ByteStamped)))
  "Returns md5sum for a message object of type 'ByteStamped"
  "f23209498cbb58123c2487d000aeddc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ByteStamped>)))
  "Returns full string definition for message of type '<ByteStamped>"
  (cl:format cl:nil "time stamp~%byte data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ByteStamped)))
  "Returns full string definition for message of type 'ByteStamped"
  (cl:format cl:nil "time stamp~%byte data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ByteStamped>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ByteStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ByteStamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
