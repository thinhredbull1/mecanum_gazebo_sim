;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::Int16Stamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'Int16Stamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::INT16STAMPED")
  (make-package "STD_STAMPED_MSGS::INT16STAMPED"))

(in-package "ROS")
;;//! \htmlinclude Int16Stamped.msg.html


(defclass std_stamped_msgs::Int16Stamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::Int16Stamped
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
    ;; int16 _data
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int16 _data
       (write-word _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _data
     (setq _data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get std_stamped_msgs::Int16Stamped :md5sum-) "946ed1a76e3f21c289a4a6b1e0e2a6f2")
(setf (get std_stamped_msgs::Int16Stamped :datatype-) "std_stamped_msgs/Int16Stamped")
(setf (get std_stamped_msgs::Int16Stamped :definition-)
      "time stamp
int16 data
")



(provide :std_stamped_msgs/Int16Stamped "946ed1a76e3f21c289a4a6b1e0e2a6f2")


