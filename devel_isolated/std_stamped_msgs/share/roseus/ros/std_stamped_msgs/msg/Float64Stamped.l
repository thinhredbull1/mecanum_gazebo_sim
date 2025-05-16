;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::Float64Stamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'Float64Stamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::FLOAT64STAMPED")
  (make-package "STD_STAMPED_MSGS::FLOAT64STAMPED"))

(in-package "ROS")
;;//! \htmlinclude Float64Stamped.msg.html


(defclass std_stamped_msgs::Float64Stamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::Float64Stamped
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
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get std_stamped_msgs::Float64Stamped :md5sum-) "176463c696aec75591f61a77cde70a71")
(setf (get std_stamped_msgs::Float64Stamped :datatype-) "std_stamped_msgs/Float64Stamped")
(setf (get std_stamped_msgs::Float64Stamped :definition-)
      "time stamp
float64 data
")



(provide :std_stamped_msgs/Float64Stamped "176463c696aec75591f61a77cde70a71")


