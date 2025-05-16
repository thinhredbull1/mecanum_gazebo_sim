;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::StringService)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'StringService (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::STRINGSERVICE")
  (make-package "STD_STAMPED_MSGS::STRINGSERVICE"))
(unless (find-package "STD_STAMPED_MSGS::STRINGSERVICEREQUEST")
  (make-package "STD_STAMPED_MSGS::STRINGSERVICEREQUEST"))
(unless (find-package "STD_STAMPED_MSGS::STRINGSERVICERESPONSE")
  (make-package "STD_STAMPED_MSGS::STRINGSERVICERESPONSE"))

(in-package "ROS")





(defclass std_stamped_msgs::StringServiceRequest
  :super ros::object
  :slots (_request ))

(defmethod std_stamped_msgs::StringServiceRequest
  (:init
   (&key
    ((:request __request) "")
    )
   (send-super :init)
   (setq _request (string __request))
   self)
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
  (:serialization-length
   ()
   (+
    ;; string _request
    4 (length _request)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _request
       (write-long (length _request) s) (princ _request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_stamped_msgs::StringServiceResponse
  :super ros::object
  :slots (_respond ))

(defmethod std_stamped_msgs::StringServiceResponse
  (:init
   (&key
    ((:respond __respond) "")
    )
   (send-super :init)
   (setq _respond (string __respond))
   self)
  (:respond
   (&optional __respond)
   (if __respond (setq _respond __respond)) _respond)
  (:serialization-length
   ()
   (+
    ;; string _respond
    4 (length _respond)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _respond
       (write-long (length _respond) s) (princ _respond s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _respond
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _respond (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_stamped_msgs::StringService
  :super ros::object
  :slots ())

(setf (get std_stamped_msgs::StringService :md5sum-) "68e8d6dbd10fbe88400fb3bae3c6f122")
(setf (get std_stamped_msgs::StringService :datatype-) "std_stamped_msgs/StringService")
(setf (get std_stamped_msgs::StringService :request) std_stamped_msgs::StringServiceRequest)
(setf (get std_stamped_msgs::StringService :response) std_stamped_msgs::StringServiceResponse)

(defmethod std_stamped_msgs::StringServiceRequest
  (:response () (instance std_stamped_msgs::StringServiceResponse :init)))

(setf (get std_stamped_msgs::StringServiceRequest :md5sum-) "68e8d6dbd10fbe88400fb3bae3c6f122")
(setf (get std_stamped_msgs::StringServiceRequest :datatype-) "std_stamped_msgs/StringServiceRequest")
(setf (get std_stamped_msgs::StringServiceRequest :definition-)
      "string request
---
string respond
")

(setf (get std_stamped_msgs::StringServiceResponse :md5sum-) "68e8d6dbd10fbe88400fb3bae3c6f122")
(setf (get std_stamped_msgs::StringServiceResponse :datatype-) "std_stamped_msgs/StringServiceResponse")
(setf (get std_stamped_msgs::StringServiceResponse :definition-)
      "string request
---
string respond
")



(provide :std_stamped_msgs/StringService "68e8d6dbd10fbe88400fb3bae3c6f122")


