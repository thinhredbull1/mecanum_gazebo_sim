;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::ByteStamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'ByteStamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::BYTESTAMPED")
  (make-package "STD_STAMPED_MSGS::BYTESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ByteStamped.msg.html


(defclass std_stamped_msgs::ByteStamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::ByteStamped
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
    ;; byte _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; byte _data
       (write-byte _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; byte _data
     (setq _data (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _data 127) (setq _data (- _data 256)))
   ;;
   self)
  )

(setf (get std_stamped_msgs::ByteStamped :md5sum-) "f23209498cbb58123c2487d000aeddc4")
(setf (get std_stamped_msgs::ByteStamped :datatype-) "std_stamped_msgs/ByteStamped")
(setf (get std_stamped_msgs::ByteStamped :definition-)
      "time stamp
byte data
")



(provide :std_stamped_msgs/ByteStamped "f23209498cbb58123c2487d000aeddc4")


