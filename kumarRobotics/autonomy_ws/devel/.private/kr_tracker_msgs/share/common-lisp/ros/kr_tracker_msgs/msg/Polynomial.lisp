; Auto-generated. Do not edit!


(cl:in-package kr_tracker_msgs-msg)


;//! \htmlinclude Polynomial.msg.html

(cl:defclass <Polynomial> (roslisp-msg-protocol:ros-message)
  ((degree
    :reader degree
    :initarg :degree
    :type cl:integer
    :initform 0)
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0)
   (basis
    :reader basis
    :initarg :basis
    :type cl:fixnum
    :initform 0)
   (coeffs
    :reader coeffs
    :initarg :coeffs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Polynomial (<Polynomial>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polynomial>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polynomial)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_tracker_msgs-msg:<Polynomial> is deprecated: use kr_tracker_msgs-msg:Polynomial instead.")))

(cl:ensure-generic-function 'degree-val :lambda-list '(m))
(cl:defmethod degree-val ((m <Polynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:degree-val is deprecated.  Use kr_tracker_msgs-msg:degree instead.")
  (degree m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <Polynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:dt-val is deprecated.  Use kr_tracker_msgs-msg:dt instead.")
  (dt m))

(cl:ensure-generic-function 'basis-val :lambda-list '(m))
(cl:defmethod basis-val ((m <Polynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:basis-val is deprecated.  Use kr_tracker_msgs-msg:basis instead.")
  (basis m))

(cl:ensure-generic-function 'coeffs-val :lambda-list '(m))
(cl:defmethod coeffs-val ((m <Polynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:coeffs-val is deprecated.  Use kr_tracker_msgs-msg:coeffs instead.")
  (coeffs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polynomial>) ostream)
  "Serializes a message object of type '<Polynomial>"
  (cl:let* ((signed (cl:slot-value msg 'degree)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'basis)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coeffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'coeffs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polynomial>) istream)
  "Deserializes a message object of type '<Polynomial>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'degree) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'basis)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coeffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coeffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polynomial>)))
  "Returns string type for a message object of type '<Polynomial>"
  "kr_tracker_msgs/Polynomial")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polynomial)))
  "Returns string type for a message object of type 'Polynomial"
  "kr_tracker_msgs/Polynomial")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polynomial>)))
  "Returns md5sum for a message object of type '<Polynomial>"
  "364f75c2ff53cd714f15f5974ff407e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polynomial)))
  "Returns md5sum for a message object of type 'Polynomial"
  "364f75c2ff53cd714f15f5974ff407e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polynomial>)))
  "Returns full string definition for message of type '<Polynomial>"
  (cl:format cl:nil "# There should be 1 more coeffs than the degree~%int32 degree~%float32 dt~%uint8 basis~%float32[] coeffs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polynomial)))
  "Returns full string definition for message of type 'Polynomial"
  (cl:format cl:nil "# There should be 1 more coeffs than the degree~%int32 degree~%float32 dt~%uint8 basis~%float32[] coeffs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polynomial>))
  (cl:+ 0
     4
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coeffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polynomial>))
  "Converts a ROS message object to a list"
  (cl:list 'Polynomial
    (cl:cons ':degree (degree msg))
    (cl:cons ':dt (dt msg))
    (cl:cons ':basis (basis msg))
    (cl:cons ':coeffs (coeffs msg))
))
