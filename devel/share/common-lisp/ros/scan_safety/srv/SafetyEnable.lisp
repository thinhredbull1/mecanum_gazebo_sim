; Auto-generated. Do not edit!


(cl:in-package scan_safety-srv)


;//! \htmlinclude SafetyEnable-request.msg.html

(cl:defclass <SafetyEnable-request> (roslisp-msg-protocol:ros-message)
  ((enable_safety
    :reader enable_safety
    :initarg :enable_safety
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SafetyEnable-request (<SafetyEnable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyEnable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyEnable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scan_safety-srv:<SafetyEnable-request> is deprecated: use scan_safety-srv:SafetyEnable-request instead.")))

(cl:ensure-generic-function 'enable_safety-val :lambda-list '(m))
(cl:defmethod enable_safety-val ((m <SafetyEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scan_safety-srv:enable_safety-val is deprecated.  Use scan_safety-srv:enable_safety instead.")
  (enable_safety m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyEnable-request>) ostream)
  "Serializes a message object of type '<SafetyEnable-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_safety) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyEnable-request>) istream)
  "Deserializes a message object of type '<SafetyEnable-request>"
    (cl:setf (cl:slot-value msg 'enable_safety) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyEnable-request>)))
  "Returns string type for a service object of type '<SafetyEnable-request>"
  "scan_safety/SafetyEnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyEnable-request)))
  "Returns string type for a service object of type 'SafetyEnable-request"
  "scan_safety/SafetyEnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyEnable-request>)))
  "Returns md5sum for a message object of type '<SafetyEnable-request>"
  "ae7af90fe0b005a2c2be5fe5227bcaa2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyEnable-request)))
  "Returns md5sum for a message object of type 'SafetyEnable-request"
  "ae7af90fe0b005a2c2be5fe5227bcaa2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyEnable-request>)))
  "Returns full string definition for message of type '<SafetyEnable-request>"
  (cl:format cl:nil "~%bool enable_safety   # Request to enable/disable safety~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyEnable-request)))
  "Returns full string definition for message of type 'SafetyEnable-request"
  (cl:format cl:nil "~%bool enable_safety   # Request to enable/disable safety~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyEnable-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyEnable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyEnable-request
    (cl:cons ':enable_safety (enable_safety msg))
))
;//! \htmlinclude SafetyEnable-response.msg.html

(cl:defclass <SafetyEnable-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SafetyEnable-response (<SafetyEnable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyEnable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyEnable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scan_safety-srv:<SafetyEnable-response> is deprecated: use scan_safety-srv:SafetyEnable-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SafetyEnable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scan_safety-srv:success-val is deprecated.  Use scan_safety-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyEnable-response>) ostream)
  "Serializes a message object of type '<SafetyEnable-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyEnable-response>) istream)
  "Deserializes a message object of type '<SafetyEnable-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyEnable-response>)))
  "Returns string type for a service object of type '<SafetyEnable-response>"
  "scan_safety/SafetyEnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyEnable-response)))
  "Returns string type for a service object of type 'SafetyEnable-response"
  "scan_safety/SafetyEnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyEnable-response>)))
  "Returns md5sum for a message object of type '<SafetyEnable-response>"
  "ae7af90fe0b005a2c2be5fe5227bcaa2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyEnable-response)))
  "Returns md5sum for a message object of type 'SafetyEnable-response"
  "ae7af90fe0b005a2c2be5fe5227bcaa2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyEnable-response>)))
  "Returns full string definition for message of type '<SafetyEnable-response>"
  (cl:format cl:nil "bool success               # Indicate if the request was successful or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyEnable-response)))
  "Returns full string definition for message of type 'SafetyEnable-response"
  (cl:format cl:nil "bool success               # Indicate if the request was successful or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyEnable-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyEnable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyEnable-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SafetyEnable)))
  'SafetyEnable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SafetyEnable)))
  'SafetyEnable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyEnable)))
  "Returns string type for a service object of type '<SafetyEnable>"
  "scan_safety/SafetyEnable")