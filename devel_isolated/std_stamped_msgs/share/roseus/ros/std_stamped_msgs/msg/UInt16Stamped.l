;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::UInt16Stamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'UInt16Stamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::UINT16STAMPED")
  (make-package "STD_STAMPED_MSGS::UINT16STAMPED"))

(in-package "ROS")
;;//! \htmlinclude UInt16Stamped.msg.html


(defclass std_stamped_msgs::UInt16Stamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::UInt16Stamped
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
    ;; uint16 _data
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint16 _data
       (write-word _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _data
     (setq _data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get std_stamped_msgs::UInt16Stamped :md5sum-) "bc51196fd2f91dfae2a57f1f1b284e7f")
(setf (get std_stamped_msgs::UInt16Stamped :datatype-) "std_stamped_msgs/UInt16Stamped")
(setf (get std_stamped_msgs::UInt16Stamped :definition-)
      "time stamp
uint16 data
")



(provide :std_stamped_msgs/UInt16Stamped "bc51196fd2f91dfae2a57f1f1b284e7f")


