;; Auto-generated. Do not edit!


(when (boundp 'scan_safety::SafetyEnable)
  (if (not (find-package "SCAN_SAFETY"))
    (make-package "SCAN_SAFETY"))
  (shadow 'SafetyEnable (find-package "SCAN_SAFETY")))
(unless (find-package "SCAN_SAFETY::SAFETYENABLE")
  (make-package "SCAN_SAFETY::SAFETYENABLE"))
(unless (find-package "SCAN_SAFETY::SAFETYENABLEREQUEST")
  (make-package "SCAN_SAFETY::SAFETYENABLEREQUEST"))
(unless (find-package "SCAN_SAFETY::SAFETYENABLERESPONSE")
  (make-package "SCAN_SAFETY::SAFETYENABLERESPONSE"))

(in-package "ROS")





(defclass scan_safety::SafetyEnableRequest
  :super ros::object
  :slots (_enable_safety ))

(defmethod scan_safety::SafetyEnableRequest
  (:init
   (&key
    ((:enable_safety __enable_safety) nil)
    )
   (send-super :init)
   (setq _enable_safety __enable_safety)
   self)
  (:enable_safety
   (&optional (__enable_safety :null))
   (if (not (eq __enable_safety :null)) (setq _enable_safety __enable_safety)) _enable_safety)
  (:serialization-length
   ()
   (+
    ;; bool _enable_safety
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable_safety
       (if _enable_safety (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable_safety
     (setq _enable_safety (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass scan_safety::SafetyEnableResponse
  :super ros::object
  :slots (_success ))

(defmethod scan_safety::SafetyEnableResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass scan_safety::SafetyEnable
  :super ros::object
  :slots ())

(setf (get scan_safety::SafetyEnable :md5sum-) "ae7af90fe0b005a2c2be5fe5227bcaa2")
(setf (get scan_safety::SafetyEnable :datatype-) "scan_safety/SafetyEnable")
(setf (get scan_safety::SafetyEnable :request) scan_safety::SafetyEnableRequest)
(setf (get scan_safety::SafetyEnable :response) scan_safety::SafetyEnableResponse)

(defmethod scan_safety::SafetyEnableRequest
  (:response () (instance scan_safety::SafetyEnableResponse :init)))

(setf (get scan_safety::SafetyEnableRequest :md5sum-) "ae7af90fe0b005a2c2be5fe5227bcaa2")
(setf (get scan_safety::SafetyEnableRequest :datatype-) "scan_safety/SafetyEnableRequest")
(setf (get scan_safety::SafetyEnableRequest :definition-)
      "
bool enable_safety   # Request to enable/disable safety
---
bool success               # Indicate if the request was successful or not
")

(setf (get scan_safety::SafetyEnableResponse :md5sum-) "ae7af90fe0b005a2c2be5fe5227bcaa2")
(setf (get scan_safety::SafetyEnableResponse :datatype-) "scan_safety/SafetyEnableResponse")
(setf (get scan_safety::SafetyEnableResponse :definition-)
      "
bool enable_safety   # Request to enable/disable safety
---
bool success               # Indicate if the request was successful or not
")



(provide :scan_safety/SafetyEnable "ae7af90fe0b005a2c2be5fe5227bcaa2")


