;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::ColorRGBAStamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'ColorRGBAStamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::COLORRGBASTAMPED")
  (make-package "STD_STAMPED_MSGS::COLORRGBASTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ColorRGBAStamped.msg.html


(defclass std_stamped_msgs::ColorRGBAStamped
  :super ros::object
  :slots (_stamp _r _g _b _a ))

(defmethod std_stamped_msgs::ColorRGBAStamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:r __r) 0.0)
    ((:g __g) 0.0)
    ((:b __b) 0.0)
    ((:a __a) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _r (float __r))
   (setq _g (float __g))
   (setq _b (float __b))
   (setq _a (float __a))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32 _r
    4
    ;; float32 _g
    4
    ;; float32 _b
    4
    ;; float32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _g
       (sys::poke _g (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _g
     (setq _g (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get std_stamped_msgs::ColorRGBAStamped :md5sum-) "77543cf1c81098c248475a15489ec55d")
(setf (get std_stamped_msgs::ColorRGBAStamped :datatype-) "std_stamped_msgs/ColorRGBAStamped")
(setf (get std_stamped_msgs::ColorRGBAStamped :definition-)
      "time stamp
float32 r
float32 g
float32 b
float32 a
")



(provide :std_stamped_msgs/ColorRGBAStamped "77543cf1c81098c248475a15489ec55d")


