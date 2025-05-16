; Auto-generated. Do not edit!


(cl:in-package std_stamped_msgs-srv)


;//! \htmlinclude StringService-request.msg.html

(cl:defclass <StringService-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:string
    :initform ""))
)

(cl:defclass StringService-request (<StringService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_stamped_msgs-srv:<StringService-request> is deprecated: use std_stamped_msgs-srv:StringService-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <StringService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-srv:request-val is deprecated.  Use std_stamped_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringService-request>) ostream)
  "Serializes a message object of type '<StringService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringService-request>) istream)
  "Deserializes a message object of type '<StringService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringService-request>)))
  "Returns string type for a service object of type '<StringService-request>"
  "std_stamped_msgs/StringServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringService-request)))
  "Returns string type for a service object of type 'StringService-request"
  "std_stamped_msgs/StringServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringService-request>)))
  "Returns md5sum for a message object of type '<StringService-request>"
  "68e8d6dbd10fbe88400fb3bae3c6f122")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringService-request)))
  "Returns md5sum for a message object of type 'StringService-request"
  "68e8d6dbd10fbe88400fb3bae3c6f122")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringService-request>)))
  "Returns full string definition for message of type '<StringService-request>"
  (cl:format cl:nil "string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringService-request)))
  "Returns full string definition for message of type 'StringService-request"
  (cl:format cl:nil "string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StringService-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude StringService-response.msg.html

(cl:defclass <StringService-response> (roslisp-msg-protocol:ros-message)
  ((respond
    :reader respond
    :initarg :respond
    :type cl:string
    :initform ""))
)

(cl:defclass StringService-response (<StringService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_stamped_msgs-srv:<StringService-response> is deprecated: use std_stamped_msgs-srv:StringService-response instead.")))

(cl:ensure-generic-function 'respond-val :lambda-list '(m))
(cl:defmethod respond-val ((m <StringService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_stamped_msgs-srv:respond-val is deprecated.  Use std_stamped_msgs-srv:respond instead.")
  (respond m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringService-response>) ostream)
  "Serializes a message object of type '<StringService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'respond))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'respond))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringService-response>) istream)
  "Deserializes a message object of type '<StringService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'respond) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'respond) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringService-response>)))
  "Returns string type for a service object of type '<StringService-response>"
  "std_stamped_msgs/StringServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringService-response)))
  "Returns string type for a service object of type 'StringService-response"
  "std_stamped_msgs/StringServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringService-response>)))
  "Returns md5sum for a message object of type '<StringService-response>"
  "68e8d6dbd10fbe88400fb3bae3c6f122")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringService-response)))
  "Returns md5sum for a message object of type 'StringService-response"
  "68e8d6dbd10fbe88400fb3bae3c6f122")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringService-response>)))
  "Returns full string definition for message of type '<StringService-response>"
  (cl:format cl:nil "string respond~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringService-response)))
  "Returns full string definition for message of type 'StringService-response"
  (cl:format cl:nil "string respond~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'respond))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StringService-response
    (cl:cons ':respond (respond msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StringService)))
  'StringService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StringService)))
  'StringService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringService)))
  "Returns string type for a service object of type '<StringService>"
  "std_stamped_msgs/StringService")