; Auto-generated. Do not edit!


(cl:in-package std_stamped_msgs-msg)


;//! \htmlinclude ColorRGBAStamped.msg.html

(cl:defclass <ColorRGBAStamped> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0)
   (g
    :reader g
    :initarg :g
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0)
   (a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0))
)

(cl:defclass ColorRGBAStamped (<ColorRGBAStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorRGBAStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorRGBAStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_stamped_msgs-msg:<ColorRGBAStamped> is deprecated: use std_stamped_msgs-msg:ColorRGBAStamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ColorRGBAStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:stamp-val is deprecated.  Use std_stamped_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <ColorRGBAStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:r-val is deprecated.  Use std_stamped_msgs-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <ColorRGBAStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:g-val is deprecated.  Use std_stamped_msgs-msg:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <ColorRGBAStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:b-val is deprecated.  Use std_stamped_msgs-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <ColorRGBAStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-msg:a-val is deprecated.  Use std_stamped_msgs-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorRGBAStamped>) ostream)
  "Serializes a message object of type '<ColorRGBAStamped>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'g))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorRGBAStamped>) istream)
  "Deserializes a message object of type '<ColorRGBAStamped>"
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
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'g) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorRGBAStamped>)))
  "Returns string type for a message object of type '<ColorRGBAStamped>"
  "std_stamped_msgs/ColorRGBAStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorRGBAStamped)))
  "Returns string type for a message object of type 'ColorRGBAStamped"
  "std_stamped_msgs/ColorRGBAStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorRGBAStamped>)))
  "Returns md5sum for a message object of type '<ColorRGBAStamped>"
  "77543cf1c81098c248475a15489ec55d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorRGBAStamped)))
  "Returns md5sum for a message object of type 'ColorRGBAStamped"
  "77543cf1c81098c248475a15489ec55d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorRGBAStamped>)))
  "Returns full string definition for message of type '<ColorRGBAStamped>"
  (cl:format cl:nil "time stamp~%float32 r~%float32 g~%float32 b~%float32 a~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorRGBAStamped)))
  "Returns full string definition for message of type 'ColorRGBAStamped"
  (cl:format cl:nil "time stamp~%float32 r~%float32 g~%float32 b~%float32 a~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorRGBAStamped>))
  (cl:+ 0
     8
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorRGBAStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorRGBAStamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
    (cl:cons ':a (a msg))
))
