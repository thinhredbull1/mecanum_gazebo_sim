;; Auto-generated. Do not edit!


(when (boundp 'restricted_layer::DataArray)
  (if (not (find-package "RESTRICTED_LAYER"))
    (make-package "RESTRICTED_LAYER"))
  (shadow 'DataArray (find-package "RESTRICTED_LAYER")))
(unless (find-package "RESTRICTED_LAYER::DATAARRAY")
  (make-package "RESTRICTED_LAYER::DATAARRAY"))

(in-package "ROS")
;;//! \htmlinclude DataArray.msg.html


(defclass restricted_layer::DataArray
  :super ros::object
  :slots (_data ))

(defmethod restricted_layer::DataArray
  (:init
   (&key
    ((:data __data) ())
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; restricted_layer/Data[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; restricted_layer/Data[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; restricted_layer/Data[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance restricted_layer::Data :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get restricted_layer::DataArray :md5sum-) "aee3eb144bbf6cd2eb2d2f628b793624")
(setf (get restricted_layer::DataArray :datatype-) "restricted_layer/DataArray")
(setf (get restricted_layer::DataArray :definition-)
      "Data[] data

================================================================================
MSG: restricted_layer/Data
float64 x
float64 y

")



(provide :restricted_layer/DataArray "aee3eb144bbf6cd2eb2d2f628b793624")


