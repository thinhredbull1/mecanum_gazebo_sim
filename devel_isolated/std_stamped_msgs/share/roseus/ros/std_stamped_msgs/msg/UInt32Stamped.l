;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::UInt32Stamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'UInt32Stamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::UINT32STAMPED")
  (make-package "STD_STAMPED_MSGS::UINT32STAMPED"))

(in-package "ROS")
;;//! \htmlinclude UInt32Stamped.msg.html


(defclass std_stamped_msgs::UInt32Stamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::UInt32Stamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data (round __data))
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
    ;; uint32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get std_stamped_msgs::UInt32Stamped :md5sum-) "a92d2e7b146feacea180959ae4c653b5")
(setf (get std_stamped_msgs::UInt32Stamped :datatype-) "std_stamped_msgs/UInt32Stamped")
(setf (get std_stamped_msgs::UInt32Stamped :definition-)
      "time stamp
uint32 data
")



(provide :std_stamped_msgs/UInt32Stamped "a92d2e7b146feacea180959ae4c653b5")


