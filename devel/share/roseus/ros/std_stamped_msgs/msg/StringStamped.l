;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::StringStamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'StringStamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::STRINGSTAMPED")
  (make-package "STD_STAMPED_MSGS::STRINGSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude StringStamped.msg.html


(defclass std_stamped_msgs::StringStamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod std_stamped_msgs::StringStamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data (string __data))
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
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get std_stamped_msgs::StringStamped :md5sum-) "37670eed6af64f24a40b9b9fc1cb861e")
(setf (get std_stamped_msgs::StringStamped :datatype-) "std_stamped_msgs/StringStamped")
(setf (get std_stamped_msgs::StringStamped :definition-)
      "time stamp
string data
")



(provide :std_stamped_msgs/StringStamped "37670eed6af64f24a40b9b9fc1cb861e")


