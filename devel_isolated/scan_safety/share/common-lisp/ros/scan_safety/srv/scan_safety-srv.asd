
(cl:in-package :asdf)

(defsystem "scan_safety-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SafetyControl" :depends-on ("_package_SafetyControl"))
    (:file "_package_SafetyControl" :depends-on ("_package"))
    (:file "SafetyEnable" :depends-on ("_package_SafetyEnable"))
    (:file "_package_SafetyEnable" :depends-on ("_package"))
  ))