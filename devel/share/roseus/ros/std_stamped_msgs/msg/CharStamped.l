;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::CharStamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'CharStamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::CHARSTAMPED")
  (make-package "STD_STAMPED_MSGS::CHARSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude CharStamped.msg.html


(defclass std_stamped_msgs::CharStamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::CharStamped
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
    ;; char _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; char _data
       (write-byte _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; char _data
     (setq _data (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get std_stamped_msgs::CharStamped :md5sum-) "e70f787643ed8949d815a4df6de687f4")
(setf (get std_stamped_msgs::CharStamped :datatype-) "std_stamped_msgs/CharStamped")
(setf (get std_stamped_msgs::CharStamped :definition-)
      "time stamp
char data
")



(provide :std_stamped_msgs/CharStamped "e70f787643ed8949d815a4df6de687f4")


