;; Auto-generated. Do not edit!


(when (boundp 'scan_safety::SafetyControl)
  (if (not (find-package "SCAN_SAFETY"))
    (make-package "SCAN_SAFETY"))
  (shadow 'SafetyControl (find-package "SCAN_SAFETY")))
(unless (find-package "SCAN_SAFETY::SAFETYCONTROL")
  (make-package "SCAN_SAFETY::SAFETYCONTROL"))
(unless (find-package "SCAN_SAFETY::SAFETYCONTROLREQUEST")
  (make-package "SCAN_SAFETY::SAFETYCONTROLREQUEST"))
(unless (find-package "SCAN_SAFETY::SAFETYCONTROLRESPONSE")
  (make-package "SCAN_SAFETY::SAFETYCONTROLRESPONSE"))

(in-package "ROS")





(defclass scan_safety::SafetyControlRequest
  :super ros::object
  :slots (_job ))

(defmethod scan_safety::SafetyControlRequest
  (:init
   (&key
    ((:job __job) 0)
    )
   (send-super :init)
   (setq _job (round __job))
   self)
  (:job
   (&optional __job)
   (if __job (setq _job __job)) _job)
  (:serialization-length
   ()
   (+
    ;; int8 _job
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _job
       (write-byte _job s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _job
     (setq _job (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _job 127) (setq _job (- _job 256)))
   ;;
   self)
  )

(defclass scan_safety::SafetyControlResponse
  :super ros::object
  :slots (_result ))

(defmethod scan_safety::SafetyControlResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass scan_safety::SafetyControl
  :super ros::object
  :slots ())

(setf (get scan_safety::SafetyControl :md5sum-) "bc1260ea4239d795414826aa59e7fb9a")
(setf (get scan_safety::SafetyControl :datatype-) "scan_safety/SafetyControl")
(setf (get scan_safety::SafetyControl :request) scan_safety::SafetyControlRequest)
(setf (get scan_safety::SafetyControl :response) scan_safety::SafetyControlResponse)

(defmethod scan_safety::SafetyControlRequest
  (:response () (instance scan_safety::SafetyControlResponse :init)))

(setf (get scan_safety::SafetyControlRequest :md5sum-) "bc1260ea4239d795414826aa59e7fb9a")
(setf (get scan_safety::SafetyControlRequest :datatype-) "scan_safety/SafetyControlRequest")
(setf (get scan_safety::SafetyControlRequest :definition-)
      "int8 job
---
bool result
")

(setf (get scan_safety::SafetyControlResponse :md5sum-) "bc1260ea4239d795414826aa59e7fb9a")
(setf (get scan_safety::SafetyControlResponse :datatype-) "scan_safety/SafetyControlResponse")
(setf (get scan_safety::SafetyControlResponse :definition-)
      "int8 job
---
bool result
")



(provide :scan_safety/SafetyControl "bc1260ea4239d795414826aa59e7fb9a")


