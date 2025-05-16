
(cl:in-package :asdf)

(defsystem "restricted_layer-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Data" :depends-on ("_package_Data"))
    (:file "_package_Data" :depends-on ("_package"))
    (:file "DataArray" :depends-on ("_package_DataArray"))
    (:file "_package_DataArray" :depends-on ("_package"))
  ))