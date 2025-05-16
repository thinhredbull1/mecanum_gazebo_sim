;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::Int8Stamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'Int8Stamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::INT8STAMPED")
  (make-package "STD_STAMPED_MSGS::INT8STAMPED"))

(in-package "ROS")
;;//! \htmlinclude Int8Stamped.msg.html


(defclass std_stamped_msgs::Int8Stamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::Int8Stamped
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
    ;; int8 _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int8 _data
       (write-byte _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _data
     (setq _data (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _data 127) (setq _data (- _data 256)))
   ;;
   self)
  )

(setf (get std_stamped_msgs::Int8Stamped :md5sum-) "288c30f4b6406db7723b23d8f510d43f")
(setf (get std_stamped_msgs::Int8Stamped :datatype-) "std_stamped_msgs/Int8Stamped")
(setf (get std_stamped_msgs::Int8Stamped :definition-)
      "time stamp
int8 data
")



(provide :std_stamped_msgs/Int8Stamped "288c30f4b6406db7723b23d8f510d43f")


