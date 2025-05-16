;; Auto-generated. Do not edit!


(when (boundp 'safety_msgs::SafetyStatus)
  (if (not (find-package "SAFETY_MSGS"))
    (make-package "SAFETY_MSGS"))
  (shadow 'SafetyStatus (find-package "SAFETY_MSGS")))
(unless (find-package "SAFETY_MSGS::SAFETYSTATUS")
  (make-package "SAFETY_MSGS::SAFETYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SafetyStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass safety_msgs::SafetyStatus
  :super ros::object
  :slots (_header _id _name _job _fields ))

(defmethod safety_msgs::SafetyStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:name __name) "")
    ((:job __job) 0)
    ((:fields __fields) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _job (round __job))
   (setq _fields __fields)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:job
   (&optional __job)
   (if __job (setq _job __job)) _job)
  (:fields
   (&optional __fields)
   (if __fields (setq _fields __fields)) _fields)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _id
    1
    ;; string _name
    4 (length _name)
    ;; int8 _job
    1
    ;; int8[] _fields
    (* 1    (length _fields)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _id
       (write-byte _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int8 _job
       (write-byte _job s)
     ;; int8[] _fields
     (write-long (length _fields) s)
     (dotimes (i (length _fields))
       (write-byte (elt _fields i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _job
     (setq _job (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _job 127) (setq _job (- _job 256)))
   ;; int8[] _fields
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fields (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _fields i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _fields i) 127) (setf (elt _fields i) (- (elt _fields i) 256)))
     ))
   ;;
   self)
  )

(setf (get safety_msgs::SafetyStatus :md5sum-) "3813fc5ff23effa131d96d27a6d41099")
(setf (get safety_msgs::SafetyStatus :datatype-) "safety_msgs/SafetyStatus")
(setf (get safety_msgs::SafetyStatus :definition-)
      "Header header
int8 id
string name
int8 job           # current job
int8[] fields      # fields status
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :safety_msgs/SafetyStatus "3813fc5ff23effa131d96d27a6d41099")


