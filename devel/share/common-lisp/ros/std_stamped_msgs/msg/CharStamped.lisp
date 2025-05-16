; Auto-generated. Do not edit!


(cl:in-package std_stamped_msgs-msg)


;//! \htmlinclude CharStamped.msg.html

(cl:defclass <CharStamped> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CharStamped (<CharStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CharStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CharStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_stamped_msgs-msg:<CharStamped> is deprecated: use std_stamped_msgs-msg:CharStamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <CharStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:stamp-val is deprecated.  Use std_stamped_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <CharStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:data-val is deprecated.  Use std_stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CharStamped>) ostream)
  "Serializes a message object of type '<CharStamped>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CharStamped>) istream)
  "Deserializes a message object of type '<CharStamped>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CharStamped>)))
  "Returns string type for a message object of type '<CharStamped>"
  "std_stamped_msgs/CharStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CharStamped)))
  "Returns string type for a message object of type 'CharStamped"
  "std_stamped_msgs/CharStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CharStamped>)))
  "Returns md5sum for a message object of type '<CharStamped>"
  "e70f787643ed8949d815a4df6de687f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CharStamped)))
  "Returns md5sum for a message object of type 'CharStamped"
  "e70f787643ed8949d815a4df6de687f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CharStamped>)))
  "Returns full string definition for message of type '<CharStamped>"
  (cl:format cl:nil "time stamp~%char data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CharStamped)))
  "Returns full string definition for message of type 'CharStamped"
  (cl:format cl:nil "time stamp~%char data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CharStamped>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CharStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'CharStamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
