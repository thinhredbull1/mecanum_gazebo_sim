;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::Float32Stamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'Float32Stamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::FLOAT32STAMPED")
  (make-package "STD_STAMPED_MSGS::FLOAT32STAMPED"))

(in-package "ROS")
;;//! \htmlinclude Float32Stamped.msg.html


(defclass std_stamped_msgs::Float32Stamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::Float32Stamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data (float __data))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get std_stamped_msgs::Float32Stamped :md5sum-) "44751333526c169912c53b6cbc0f148f")
(setf (get std_stamped_msgs::Float32Stamped :datatype-) "std_stamped_msgs/Float32Stamped")
(setf (get std_stamped_msgs::Float32Stamped :definition-)
      "time stamp
float32 data
")



(provide :std_stamped_msgs/Float32Stamped "44751333526c169912c53b6cbc0f148f")


