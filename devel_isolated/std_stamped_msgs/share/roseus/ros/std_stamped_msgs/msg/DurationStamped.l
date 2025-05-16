;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::DurationStamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'DurationStamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::DURATIONSTAMPED")
  (make-package "STD_STAMPED_MSGS::DURATIONSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude DurationStamped.msg.html


(defclass std_stamped_msgs::DurationStamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::DurationStamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) (instance ros::time :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data __data)
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
    ;; duration _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; duration _data
       (write-long (send _data :sec) s) (write-long (send _data :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _data
     (send _data :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _data :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get std_stamped_msgs::DurationStamped :md5sum-) "d57c44e71dec11e6006b30f746c83278")
(setf (get std_stamped_msgs::DurationStamped :datatype-) "std_stamped_msgs/DurationStamped")
(setf (get std_stamped_msgs::DurationStamped :definition-)
      "time stamp
duration data
")



(provide :std_stamped_msgs/DurationStamped "d57c44e71dec11e6006b30f746c83278")


