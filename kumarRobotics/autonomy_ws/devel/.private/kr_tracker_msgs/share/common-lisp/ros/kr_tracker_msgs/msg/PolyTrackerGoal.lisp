; Auto-generated. Do not edit!


(cl:in-package kr_tracker_msgs-msg)


;//! \htmlinclude PolyTrackerGoal.msg.html

(cl:defclass <PolyTrackerGoal> (roslisp-msg-protocol:ros-message)
  ((t_start
    :reader t_start
    :initarg :t_start
    :type cl:real
    :initform 0)
   (order
    :reader order
    :initarg :order
    :type cl:fixnum
    :initform 0)
   (set_yaw
    :reader set_yaw
    :initarg :set_yaw
    :type cl:boolean
    :initform cl:nil)
   (separate_yaw
    :reader separate_yaw
    :initarg :separate_yaw
    :type cl:boolean
    :initform cl:nil)
   (start_yaw
    :reader start_yaw
    :initarg :start_yaw
    :type cl:float
    :initform 0.0)
   (final_yaw
    :reader final_yaw
    :initarg :final_yaw
    :type cl:float
    :initform 0.0)
   (seg_x
    :reader seg_x
    :initarg :seg_x
    :type (cl:vector kr_tracker_msgs-msg:Polynomial)
   :initform (cl:make-array 0 :element-type 'kr_tracker_msgs-msg:Polynomial :initial-element (cl:make-instance 'kr_tracker_msgs-msg:Polynomial)))
   (seg_y
    :reader seg_y
    :initarg :seg_y
    :type (cl:vector kr_tracker_msgs-msg:Polynomial)
   :initform (cl:make-array 0 :element-type 'kr_tracker_msgs-msg:Polynomial :initial-element (cl:make-instance 'kr_tracker_msgs-msg:Polynomial)))
   (seg_z
    :reader seg_z
    :initarg :seg_z
    :type (cl:vector kr_tracker_msgs-msg:Polynomial)
   :initform (cl:make-array 0 :element-type 'kr_tracker_msgs-msg:Polynomial :initial-element (cl:make-instance 'kr_tracker_msgs-msg:Polynomial)))
   (seg_yaw
    :reader seg_yaw
    :initarg :seg_yaw
    :type (cl:vector kr_tracker_msgs-msg:Polynomial)
   :initform (cl:make-array 0 :element-type 'kr_tracker_msgs-msg:Polynomial :initial-element (cl:make-instance 'kr_tracker_msgs-msg:Polynomial)))
   (cpts_status
    :reader cpts_status
    :initarg :cpts_status
    :type cl:fixnum
    :initform 0)
   (pos_pts
    :reader pos_pts
    :initarg :pos_pts
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (yaw_pts
    :reader yaw_pts
    :initarg :yaw_pts
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (knots
    :reader knots
    :initarg :knots
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PolyTrackerGoal (<PolyTrackerGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolyTrackerGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolyTrackerGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_tracker_msgs-msg:<PolyTrackerGoal> is deprecated: use kr_tracker_msgs-msg:PolyTrackerGoal instead.")))

(cl:ensure-generic-function 't_start-val :lambda-list '(m))
(cl:defmethod t_start-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:t_start-val is deprecated.  Use kr_tracker_msgs-msg:t_start instead.")
  (t_start m))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:order-val is deprecated.  Use kr_tracker_msgs-msg:order instead.")
  (order m))

(cl:ensure-generic-function 'set_yaw-val :lambda-list '(m))
(cl:defmethod set_yaw-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:set_yaw-val is deprecated.  Use kr_tracker_msgs-msg:set_yaw instead.")
  (set_yaw m))

(cl:ensure-generic-function 'separate_yaw-val :lambda-list '(m))
(cl:defmethod separate_yaw-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:separate_yaw-val is deprecated.  Use kr_tracker_msgs-msg:separate_yaw instead.")
  (separate_yaw m))

(cl:ensure-generic-function 'start_yaw-val :lambda-list '(m))
(cl:defmethod start_yaw-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:start_yaw-val is deprecated.  Use kr_tracker_msgs-msg:start_yaw instead.")
  (start_yaw m))

(cl:ensure-generic-function 'final_yaw-val :lambda-list '(m))
(cl:defmethod final_yaw-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:final_yaw-val is deprecated.  Use kr_tracker_msgs-msg:final_yaw instead.")
  (final_yaw m))

(cl:ensure-generic-function 'seg_x-val :lambda-list '(m))
(cl:defmethod seg_x-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:seg_x-val is deprecated.  Use kr_tracker_msgs-msg:seg_x instead.")
  (seg_x m))

(cl:ensure-generic-function 'seg_y-val :lambda-list '(m))
(cl:defmethod seg_y-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:seg_y-val is deprecated.  Use kr_tracker_msgs-msg:seg_y instead.")
  (seg_y m))

(cl:ensure-generic-function 'seg_z-val :lambda-list '(m))
(cl:defmethod seg_z-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:seg_z-val is deprecated.  Use kr_tracker_msgs-msg:seg_z instead.")
  (seg_z m))

(cl:ensure-generic-function 'seg_yaw-val :lambda-list '(m))
(cl:defmethod seg_yaw-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:seg_yaw-val is deprecated.  Use kr_tracker_msgs-msg:seg_yaw instead.")
  (seg_yaw m))

(cl:ensure-generic-function 'cpts_status-val :lambda-list '(m))
(cl:defmethod cpts_status-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:cpts_status-val is deprecated.  Use kr_tracker_msgs-msg:cpts_status instead.")
  (cpts_status m))

(cl:ensure-generic-function 'pos_pts-val :lambda-list '(m))
(cl:defmethod pos_pts-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:pos_pts-val is deprecated.  Use kr_tracker_msgs-msg:pos_pts instead.")
  (pos_pts m))

(cl:ensure-generic-function 'yaw_pts-val :lambda-list '(m))
(cl:defmethod yaw_pts-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:yaw_pts-val is deprecated.  Use kr_tracker_msgs-msg:yaw_pts instead.")
  (yaw_pts m))

(cl:ensure-generic-function 'knots-val :lambda-list '(m))
(cl:defmethod knots-val ((m <PolyTrackerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:knots-val is deprecated.  Use kr_tracker_msgs-msg:knots instead.")
  (knots m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolyTrackerGoal>) ostream)
  "Serializes a message object of type '<PolyTrackerGoal>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 't_start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 't_start) (cl:floor (cl:slot-value msg 't_start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'order)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_yaw) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'separate_yaw) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'seg_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'seg_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'seg_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'seg_y))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'seg_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'seg_z))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'seg_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'seg_yaw))
  (cl:let* ((signed (cl:slot-value msg 'cpts_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pos_pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pos_pts))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'yaw_pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'yaw_pts))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'knots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'knots))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolyTrackerGoal>) istream)
  "Deserializes a message object of type '<PolyTrackerGoal>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't_start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'order)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'set_yaw) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'separate_yaw) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_yaw) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'seg_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'seg_x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kr_tracker_msgs-msg:Polynomial))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'seg_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'seg_y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kr_tracker_msgs-msg:Polynomial))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'seg_z) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'seg_z)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kr_tracker_msgs-msg:Polynomial))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'seg_yaw) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'seg_yaw)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kr_tracker_msgs-msg:Polynomial))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cpts_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pos_pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pos_pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'yaw_pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'yaw_pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'knots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'knots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolyTrackerGoal>)))
  "Returns string type for a message object of type '<PolyTrackerGoal>"
  "kr_tracker_msgs/PolyTrackerGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolyTrackerGoal)))
  "Returns string type for a message object of type 'PolyTrackerGoal"
  "kr_tracker_msgs/PolyTrackerGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolyTrackerGoal>)))
  "Returns md5sum for a message object of type '<PolyTrackerGoal>"
  "5217be2ae52ee3910cfb3c0222972da5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolyTrackerGoal)))
  "Returns md5sum for a message object of type 'PolyTrackerGoal"
  "5217be2ae52ee3910cfb3c0222972da5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolyTrackerGoal>)))
  "Returns full string definition for message of type '<PolyTrackerGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%time t_start~%uint8 order~%bool set_yaw~%bool separate_yaw~%float64 start_yaw~%float64 final_yaw~%kr_tracker_msgs/Polynomial[] seg_x~%kr_tracker_msgs/Polynomial[] seg_y~%kr_tracker_msgs/Polynomial[] seg_z~%kr_tracker_msgs/Polynomial[] seg_yaw~%int8 cpts_status # 0 is no valid cpts, 1 is berstein, 2 is bspline~%geometry_msgs/Point[] pos_pts ~%float64[] yaw_pts~%float32[] knots~%~%================================================================================~%MSG: kr_tracker_msgs/Polynomial~%# There should be 1 more coeffs than the degree~%int32 degree~%float32 dt~%uint8 basis~%float32[] coeffs~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolyTrackerGoal)))
  "Returns full string definition for message of type 'PolyTrackerGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%time t_start~%uint8 order~%bool set_yaw~%bool separate_yaw~%float64 start_yaw~%float64 final_yaw~%kr_tracker_msgs/Polynomial[] seg_x~%kr_tracker_msgs/Polynomial[] seg_y~%kr_tracker_msgs/Polynomial[] seg_z~%kr_tracker_msgs/Polynomial[] seg_yaw~%int8 cpts_status # 0 is no valid cpts, 1 is berstein, 2 is bspline~%geometry_msgs/Point[] pos_pts ~%float64[] yaw_pts~%float32[] knots~%~%================================================================================~%MSG: kr_tracker_msgs/Polynomial~%# There should be 1 more coeffs than the degree~%int32 degree~%float32 dt~%uint8 basis~%float32[] coeffs~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolyTrackerGoal>))
  (cl:+ 0
     8
     1
     1
     1
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'seg_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'seg_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'seg_z) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'seg_yaw) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos_pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'yaw_pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'knots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolyTrackerGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PolyTrackerGoal
    (cl:cons ':t_start (t_start msg))
    (cl:cons ':order (order msg))
    (cl:cons ':set_yaw (set_yaw msg))
    (cl:cons ':separate_yaw (separate_yaw msg))
    (cl:cons ':start_yaw (start_yaw msg))
    (cl:cons ':final_yaw (final_yaw msg))
    (cl:cons ':seg_x (seg_x msg))
    (cl:cons ':seg_y (seg_y msg))
    (cl:cons ':seg_z (seg_z msg))
    (cl:cons ':seg_yaw (seg_yaw msg))
    (cl:cons ':cpts_status (cpts_status msg))
    (cl:cons ':pos_pts (pos_pts msg))
    (cl:cons ':yaw_pts (yaw_pts msg))
    (cl:cons ':knots (knots msg))
))
