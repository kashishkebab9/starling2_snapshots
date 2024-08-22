;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::PolyTrackerGoal)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'PolyTrackerGoal (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::POLYTRACKERGOAL")
  (make-package "KR_TRACKER_MSGS::POLYTRACKERGOAL"))

(in-package "ROS")
;;//! \htmlinclude PolyTrackerGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass kr_tracker_msgs::PolyTrackerGoal
  :super ros::object
  :slots (_t_start _order _set_yaw _separate_yaw _start_yaw _final_yaw _seg_x _seg_y _seg_z _seg_yaw _cpts_status _pos_pts _yaw_pts _knots ))

(defmethod kr_tracker_msgs::PolyTrackerGoal
  (:init
   (&key
    ((:t_start __t_start) (instance ros::time :init))
    ((:order __order) 0)
    ((:set_yaw __set_yaw) nil)
    ((:separate_yaw __separate_yaw) nil)
    ((:start_yaw __start_yaw) 0.0)
    ((:final_yaw __final_yaw) 0.0)
    ((:seg_x __seg_x) (let (r) (dotimes (i 0) (push (instance kr_tracker_msgs::Polynomial :init) r)) r))
    ((:seg_y __seg_y) (let (r) (dotimes (i 0) (push (instance kr_tracker_msgs::Polynomial :init) r)) r))
    ((:seg_z __seg_z) (let (r) (dotimes (i 0) (push (instance kr_tracker_msgs::Polynomial :init) r)) r))
    ((:seg_yaw __seg_yaw) (let (r) (dotimes (i 0) (push (instance kr_tracker_msgs::Polynomial :init) r)) r))
    ((:cpts_status __cpts_status) 0)
    ((:pos_pts __pos_pts) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:yaw_pts __yaw_pts) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:knots __knots) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _t_start __t_start)
   (setq _order (round __order))
   (setq _set_yaw __set_yaw)
   (setq _separate_yaw __separate_yaw)
   (setq _start_yaw (float __start_yaw))
   (setq _final_yaw (float __final_yaw))
   (setq _seg_x __seg_x)
   (setq _seg_y __seg_y)
   (setq _seg_z __seg_z)
   (setq _seg_yaw __seg_yaw)
   (setq _cpts_status (round __cpts_status))
   (setq _pos_pts __pos_pts)
   (setq _yaw_pts __yaw_pts)
   (setq _knots __knots)
   self)
  (:t_start
   (&optional __t_start)
   (if __t_start (setq _t_start __t_start)) _t_start)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:set_yaw
   (&optional __set_yaw)
   (if __set_yaw (setq _set_yaw __set_yaw)) _set_yaw)
  (:separate_yaw
   (&optional __separate_yaw)
   (if __separate_yaw (setq _separate_yaw __separate_yaw)) _separate_yaw)
  (:start_yaw
   (&optional __start_yaw)
   (if __start_yaw (setq _start_yaw __start_yaw)) _start_yaw)
  (:final_yaw
   (&optional __final_yaw)
   (if __final_yaw (setq _final_yaw __final_yaw)) _final_yaw)
  (:seg_x
   (&rest __seg_x)
   (if (keywordp (car __seg_x))
       (send* _seg_x __seg_x)
     (progn
       (if __seg_x (setq _seg_x (car __seg_x)))
       _seg_x)))
  (:seg_y
   (&rest __seg_y)
   (if (keywordp (car __seg_y))
       (send* _seg_y __seg_y)
     (progn
       (if __seg_y (setq _seg_y (car __seg_y)))
       _seg_y)))
  (:seg_z
   (&rest __seg_z)
   (if (keywordp (car __seg_z))
       (send* _seg_z __seg_z)
     (progn
       (if __seg_z (setq _seg_z (car __seg_z)))
       _seg_z)))
  (:seg_yaw
   (&rest __seg_yaw)
   (if (keywordp (car __seg_yaw))
       (send* _seg_yaw __seg_yaw)
     (progn
       (if __seg_yaw (setq _seg_yaw (car __seg_yaw)))
       _seg_yaw)))
  (:cpts_status
   (&optional __cpts_status)
   (if __cpts_status (setq _cpts_status __cpts_status)) _cpts_status)
  (:pos_pts
   (&rest __pos_pts)
   (if (keywordp (car __pos_pts))
       (send* _pos_pts __pos_pts)
     (progn
       (if __pos_pts (setq _pos_pts (car __pos_pts)))
       _pos_pts)))
  (:yaw_pts
   (&optional __yaw_pts)
   (if __yaw_pts (setq _yaw_pts __yaw_pts)) _yaw_pts)
  (:knots
   (&optional __knots)
   (if __knots (setq _knots __knots)) _knots)
  (:serialization-length
   ()
   (+
    ;; time _t_start
    8
    ;; uint8 _order
    1
    ;; bool _set_yaw
    1
    ;; bool _separate_yaw
    1
    ;; float64 _start_yaw
    8
    ;; float64 _final_yaw
    8
    ;; kr_tracker_msgs/Polynomial[] _seg_x
    (apply #'+ (send-all _seg_x :serialization-length)) 4
    ;; kr_tracker_msgs/Polynomial[] _seg_y
    (apply #'+ (send-all _seg_y :serialization-length)) 4
    ;; kr_tracker_msgs/Polynomial[] _seg_z
    (apply #'+ (send-all _seg_z :serialization-length)) 4
    ;; kr_tracker_msgs/Polynomial[] _seg_yaw
    (apply #'+ (send-all _seg_yaw :serialization-length)) 4
    ;; int8 _cpts_status
    1
    ;; geometry_msgs/Point[] _pos_pts
    (apply #'+ (send-all _pos_pts :serialization-length)) 4
    ;; float64[] _yaw_pts
    (* 8    (length _yaw_pts)) 4
    ;; float32[] _knots
    (* 4    (length _knots)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _t_start
       (write-long (send _t_start :sec) s) (write-long (send _t_start :nsec) s)
     ;; uint8 _order
       (write-byte _order s)
     ;; bool _set_yaw
       (if _set_yaw (write-byte -1 s) (write-byte 0 s))
     ;; bool _separate_yaw
       (if _separate_yaw (write-byte -1 s) (write-byte 0 s))
     ;; float64 _start_yaw
       (sys::poke _start_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _final_yaw
       (sys::poke _final_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; kr_tracker_msgs/Polynomial[] _seg_x
     (write-long (length _seg_x) s)
     (dolist (elem _seg_x)
       (send elem :serialize s)
       )
     ;; kr_tracker_msgs/Polynomial[] _seg_y
     (write-long (length _seg_y) s)
     (dolist (elem _seg_y)
       (send elem :serialize s)
       )
     ;; kr_tracker_msgs/Polynomial[] _seg_z
     (write-long (length _seg_z) s)
     (dolist (elem _seg_z)
       (send elem :serialize s)
       )
     ;; kr_tracker_msgs/Polynomial[] _seg_yaw
     (write-long (length _seg_yaw) s)
     (dolist (elem _seg_yaw)
       (send elem :serialize s)
       )
     ;; int8 _cpts_status
       (write-byte _cpts_status s)
     ;; geometry_msgs/Point[] _pos_pts
     (write-long (length _pos_pts) s)
     (dolist (elem _pos_pts)
       (send elem :serialize s)
       )
     ;; float64[] _yaw_pts
     (write-long (length _yaw_pts) s)
     (dotimes (i (length _yaw_pts))
       (sys::poke (elt _yaw_pts i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32[] _knots
     (write-long (length _knots) s)
     (dotimes (i (length _knots))
       (sys::poke (elt _knots i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _t_start
     (send _t_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _order
     (setq _order (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _set_yaw
     (setq _set_yaw (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _separate_yaw
     (setq _separate_yaw (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _start_yaw
     (setq _start_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _final_yaw
     (setq _final_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; kr_tracker_msgs/Polynomial[] _seg_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _seg_x (let (r) (dotimes (i n) (push (instance kr_tracker_msgs::Polynomial :init) r)) r))
     (dolist (elem- _seg_x)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; kr_tracker_msgs/Polynomial[] _seg_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _seg_y (let (r) (dotimes (i n) (push (instance kr_tracker_msgs::Polynomial :init) r)) r))
     (dolist (elem- _seg_y)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; kr_tracker_msgs/Polynomial[] _seg_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _seg_z (let (r) (dotimes (i n) (push (instance kr_tracker_msgs::Polynomial :init) r)) r))
     (dolist (elem- _seg_z)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; kr_tracker_msgs/Polynomial[] _seg_yaw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _seg_yaw (let (r) (dotimes (i n) (push (instance kr_tracker_msgs::Polynomial :init) r)) r))
     (dolist (elem- _seg_yaw)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int8 _cpts_status
     (setq _cpts_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cpts_status 127) (setq _cpts_status (- _cpts_status 256)))
   ;; geometry_msgs/Point[] _pos_pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_pts (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _pos_pts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _yaw_pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yaw_pts (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _yaw_pts i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float32[] _knots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _knots (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _knots i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get kr_tracker_msgs::PolyTrackerGoal :md5sum-) "5217be2ae52ee3910cfb3c0222972da5")
(setf (get kr_tracker_msgs::PolyTrackerGoal :datatype-) "kr_tracker_msgs/PolyTrackerGoal")
(setf (get kr_tracker_msgs::PolyTrackerGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
time t_start
uint8 order
bool set_yaw
bool separate_yaw
float64 start_yaw
float64 final_yaw
kr_tracker_msgs/Polynomial[] seg_x
kr_tracker_msgs/Polynomial[] seg_y
kr_tracker_msgs/Polynomial[] seg_z
kr_tracker_msgs/Polynomial[] seg_yaw
int8 cpts_status # 0 is no valid cpts, 1 is berstein, 2 is bspline
geometry_msgs/Point[] pos_pts 
float64[] yaw_pts
float32[] knots

================================================================================
MSG: kr_tracker_msgs/Polynomial
# There should be 1 more coeffs than the degree
int32 degree
float32 dt
uint8 basis
float32[] coeffs
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :kr_tracker_msgs/PolyTrackerGoal "5217be2ae52ee3910cfb3c0222972da5")


