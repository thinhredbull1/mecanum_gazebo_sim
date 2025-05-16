; Auto-generated. Do not edit!


(cl:in-package scan_safety-srv)


;//! \htmlinclude SafetyControl-request.msg.html

(cl:defclass <SafetyControl-request> (roslisp-msg-protocol:ros-message)
  ((job
    :reader job
    :initarg :job
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SafetyControl-request (<SafetyControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scan_safety-srv:<SafetyControl-request> is deprecated: use scan_safety-srv:SafetyControl-request instead.")))

(cl:ensure-generic-function 'job-val :lambda-list '(m))
(cl:defmethod job-val ((m <SafetyControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scan_safety-srv:job-val is deprecated.  Use scan_safety-srv:job instead.")
  (job m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyControl-request>) ostream)
  "Serializes a message object of type '<SafetyControl-request>"
  (cl:let* ((signed (cl:slot-value msg 'job)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyControl-request>) istream)
  "Deserializes a message object of type '<SafetyControl-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'job) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyControl-request>)))
  "Returns string type for a service object of type '<SafetyControl-request>"
  "scan_safety/SafetyControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyControl-request)))
  "Returns string type for a service object of type 'SafetyControl-request"
  "scan_safety/SafetyControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyControl-request>)))
  "Returns md5sum for a message object of type '<SafetyControl-request>"
  "bc1260ea4239d795414826aa59e7fb9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyControl-request)))
  "Returns md5sum for a message object of type 'SafetyControl-request"
  "bc1260ea4239d795414826aa59e7fb9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyControl-request>)))
  "Returns full string definition for message of type '<SafetyControl-request>"
  (cl:format cl:nil "int8 job~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyControl-request)))
  "Returns full string definition for message of type 'SafetyControl-request"
  (cl:format cl:nil "int8 job~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyControl-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyControl-request
    (cl:cons ':job (job msg))
))
;//! \htmlinclude SafetyControl-response.msg.html

(cl:defclass <SafetyControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SafetyControl-response (<SafetyControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scan_safety-srv:<SafetyControl-response> is deprecated: use scan_safety-srv:SafetyControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SafetyControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scan_safety-srv:result-val is deprecated.  Use scan_safety-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyControl-response>) ostream)
  "Serializes a message object of type '<SafetyControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyControl-response>) istream)
  "Deserializes a message object of type '<SafetyControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyControl-response>)))
  "Returns string type for a service object of type '<SafetyControl-response>"
  "scan_safety/SafetyControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyControl-response)))
  "Returns string type for a service object of type 'SafetyControl-response"
  "scan_safety/SafetyControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyControl-response>)))
  "Returns md5sum for a message object of type '<SafetyControl-response>"
  "bc1260ea4239d795414826aa59e7fb9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyControl-response)))
  "Returns md5sum for a message object of type 'SafetyControl-response"
  "bc1260ea4239d795414826aa59e7fb9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyControl-response>)))
  "Returns full string definition for message of type '<SafetyControl-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyControl-response)))
  "Returns full string definition for message of type 'SafetyControl-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SafetyControl)))
  'SafetyControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SafetyControl)))
  'SafetyControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyControl)))
  "Returns string type for a service object of type '<SafetyControl>"
  "scan_safety/SafetyControl")