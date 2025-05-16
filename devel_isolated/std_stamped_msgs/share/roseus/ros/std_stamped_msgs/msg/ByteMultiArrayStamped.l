;; Auto-generated. Do not edit!


(when (boundp 'std_stamped_msgs::ByteMultiArrayStamped)
  (if (not (find-package "STD_STAMPED_MSGS"))
    (make-package "STD_STAMPED_MSGS"))
  (shadow 'ByteMultiArrayStamped (find-package "STD_STAMPED_MSGS")))
(unless (find-package "STD_STAMPED_MSGS::BYTEMULTIARRAYSTAMPED")
  (make-package "STD_STAMPED_MSGS::BYTEMULTIARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ByteMultiArrayStamped.msg.html


(defclass std_stamped_msgs::ByteMultiArrayStamped
  :super ros::object
  :slots (_stamp _layout _data ))

(defmethod std_stamped_msgs::ByteMultiArrayStamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:layout __layout) (instance std_stamped_msgs::MultiArrayLayout :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _layout __layout)
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:layout
   (&rest __layout)
   (if (keywordp (car __layout))
       (send* _layout __layout)
     (progn
       (if __layout (setq _layout (car __layout)))
       _layout)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; std_stamped_msgs/MultiArrayLayout _layout
    (send _layout :serialization-length)
    ;; byte[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; std_stamped_msgs/MultiArrayLayout _layout
       (send _layout :serialize s)
     ;; byte[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-byte (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_stamped_msgs/MultiArrayLayout _layout
     (send _layout :deserialize buf ptr-) (incf ptr- (send _layout :serialization-length))
   ;; byte[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _data i) 127) (setf (elt _data i) (- (elt _data i) 256)))
     ))
   ;;
   self)
  )

(setf (get std_stamped_msgs::ByteMultiArrayStamped :md5sum-) "0fb813985ef29f54f57a76ffdc37caa6")
(setf (get std_stamped_msgs::ByteMultiArrayStamped :datatype-) "std_stamped_msgs/ByteMultiArrayStamped")
(setf (get std_stamped_msgs::ByteMultiArrayStamped :definition-)
      "# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

time stamp
MultiArrayLayout  layout        # specification of data layout
byte[]            data          # array of data


================================================================================
MSG: std_stamped_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
#
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_stamped_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :std_stamped_msgs/ByteMultiArrayStamped "0fb813985ef29f54f57a76ffdc37caa6")


