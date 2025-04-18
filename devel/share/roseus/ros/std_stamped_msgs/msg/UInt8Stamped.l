;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::UInt8Stamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'UInt8Stamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::UINT8STAMPED")
  (make-package "STD_STAMPED_MSGS::UINT8STAMPED"))

(in-package "ROS")
;;//! \htmlinclude UInt8Stamped.msg.html


(defclass std_stamped_msgs::UInt8Stamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::UInt8Stamped
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
    ;; uint8 _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint8 _data
       (write-byte _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _data
     (setq _data (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get std_stamped_msgs::UInt8Stamped :md5sum-) "cdbf359037ab2066aa91823b13d9d14e")
(setf (get std_stamped_msgs::UInt8Stamped :datatype-) "std_stamped_msgs/UInt8Stamped")
(setf (get std_stamped_msgs::UInt8Stamped :definition-)
      "time stamp
uint8 data
")



(provide :std_stamped_msgs/UInt8Stamped "cdbf359037ab2066aa91823b13d9d14e")


