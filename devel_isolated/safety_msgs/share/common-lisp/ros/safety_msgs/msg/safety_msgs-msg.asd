
(cl:in-package :asdf)

(defsystem "safety_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SafetyJob" :depends-on ("_package_SafetyJob"))
    (:file "_package_SafetyJob" :depends-on ("_package"))
    (:file "SafetyStatus" :depends-on ("_package_SafetyStatus"))
    (:file "_package_SafetyStatus" :depends-on ("_package"))
  ))