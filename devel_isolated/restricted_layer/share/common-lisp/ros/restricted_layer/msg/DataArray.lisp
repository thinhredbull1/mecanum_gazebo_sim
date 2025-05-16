; Auto-generated. Do not edit!


(cl:in-package restricted_layer-msg)


;//! \htmlinclude DataArray.msg.html

(cl:defclass <DataArray> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector restricted_layer-msg:Data)
   :initform (cl:make-array 0 :element-type 'restricted_layer-msg:Data :initial-element (cl:make-instance 'restricted_layer-msg:Data))))
)

(cl:defclass DataArray (<DataArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name restricted_layer-msg:<DataArray> is deprecated: use restricted_layer-msg:DataArray instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <DataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader restricted_layer-msg:data-val is deprecated.  Use restricted_layer-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataArray>) ostream)
  "Serializes a message object of type '<DataArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataArray>) istream)
  "Deserializes a message object of type '<DataArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'restricted_layer-msg:Data))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataArray>)))
  "Returns string type for a message object of type '<DataArray>"
  "restricted_layer/DataArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataArray)))
  "Returns string type for a message object of type 'DataArray"
  "restricted_layer/DataArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataArray>)))
  "Returns md5sum for a message object of type '<DataArray>"
  "aee3eb144bbf6cd2eb2d2f628b793624")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataArray)))
  "Returns md5sum for a message object of type 'DataArray"
  "aee3eb144bbf6cd2eb2d2f628b793624")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataArray>)))
  "Returns full string definition for message of type '<DataArray>"
  (cl:format cl:nil "Data[] data~%~%================================================================================~%MSG: restricted_layer/Data~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataArray)))
  "Returns full string definition for message of type 'DataArray"
  (cl:format cl:nil "Data[] data~%~%================================================================================~%MSG: restricted_layer/Data~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DataArray
    (cl:cons ':data (data msg))
))
