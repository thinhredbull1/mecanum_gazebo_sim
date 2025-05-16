;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::EmptyStamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'EmptyStamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::EMPTYSTAMPED")
  (make-package "STD_STAMPED_MSGS::EMPTYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude EmptyStamped.msg.html


(defclass std_stamped_msgs::EmptyStamped
  :super ros::object
  :slots (_stamp ))

(defmethod std_stamped_msgs::EmptyStamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get std_stamped_msgs::EmptyStamped :md5sum-) "84d365d08d5fc49dde870daba1c7992c")
(setf (get std_stamped_msgs::EmptyStamped :datatype-) "std_stamped_msgs/EmptyStamped")
(setf (get std_stamped_msgs::EmptyStamped :definition-)
      "time stamp
")



(provide :std_stamped_msgs/EmptyStamped "84d365d08d5fc49dde870daba1c7992c")


