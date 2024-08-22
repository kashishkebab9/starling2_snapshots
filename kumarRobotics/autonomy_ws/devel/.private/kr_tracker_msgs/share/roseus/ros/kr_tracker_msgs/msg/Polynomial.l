;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::Polynomial)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'Polynomial (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::POLYNOMIAL")
  (make-package "KR_TRACKER_MSGS::POLYNOMIAL"))

(in-package "ROS")
;;//! \htmlinclude Polynomial.msg.html


(defclass kr_tracker_msgs::Polynomial
  :super ros::object
  :slots (_degree _dt _basis _coeffs ))

(defmethod kr_tracker_msgs::Polynomial
  (:init
   (&key
    ((:degree __degree) 0)
    ((:dt __dt) 0.0)
    ((:basis __basis) 0)
    ((:coeffs __coeffs) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _degree (round __degree))
   (setq _dt (float __dt))
   (setq _basis (round __basis))
   (setq _coeffs __coeffs)
   self)
  (:degree
   (&optional __degree)
   (if __degree (setq _degree __degree)) _degree)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:basis
   (&optional __basis)
   (if __basis (setq _basis __basis)) _basis)
  (:coeffs
   (&optional __coeffs)
   (if __coeffs (setq _coeffs __coeffs)) _coeffs)
  (:serialization-length
   ()
   (+
    ;; int32 _degree
    4
    ;; float32 _dt
    4
    ;; uint8 _basis
    1
    ;; float32[] _coeffs
    (* 4    (length _coeffs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _degree
       (write-long _degree s)
     ;; float32 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _basis
       (write-byte _basis s)
     ;; float32[] _coeffs
     (write-long (length _coeffs) s)
     (dotimes (i (length _coeffs))
       (sys::poke (elt _coeffs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _degree
     (setq _degree (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dt
     (setq _dt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _basis
     (setq _basis (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _coeffs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coeffs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coeffs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get kr_tracker_msgs::Polynomial :md5sum-) "364f75c2ff53cd714f15f5974ff407e2")
(setf (get kr_tracker_msgs::Polynomial :datatype-) "kr_tracker_msgs/Polynomial")
(setf (get kr_tracker_msgs::Polynomial :definition-)
      "# There should be 1 more coeffs than the degree
int32 degree
float32 dt
uint8 basis
float32[] coeffs
")



(provide :kr_tracker_msgs/Polynomial "364f75c2ff53cd714f15f5974ff407e2")


