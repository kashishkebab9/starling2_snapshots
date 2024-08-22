;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::TrajectoryTrackerGoal)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'TrajectoryTrackerGoal (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::TRAJECTORYTRACKERGOAL")
  (make-package "KR_TRACKER_MSGS::TRAJECTORYTRACKERGOAL"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryTrackerGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass kr_tracker_msgs::TrajectoryTrackerGoal
  :super ros::object
  :slots (_waypoints _waypoint_times ))

(defmethod kr_tracker_msgs::TrajectoryTrackerGoal
  (:init
   (&key
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:waypoint_times __waypoint_times) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   (setq _waypoint_times __waypoint_times)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:waypoint_times
   (&optional __waypoint_times)
   (if __waypoint_times (setq _waypoint_times __waypoint_times)) _waypoint_times)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; float64[] _waypoint_times
    (* 8    (length _waypoint_times)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; float64[] _waypoint_times
     (write-long (length _waypoint_times) s)
     (dotimes (i (length _waypoint_times))
       (sys::poke (elt _waypoint_times i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _waypoint_times
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoint_times (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _waypoint_times i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get kr_tracker_msgs::TrajectoryTrackerGoal :md5sum-) "a9790f98f3dbe6c6131152f4cb52b2ee")
(setf (get kr_tracker_msgs::TrajectoryTrackerGoal :datatype-) "kr_tracker_msgs/TrajectoryTrackerGoal")
(setf (get kr_tracker_msgs::TrajectoryTrackerGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
geometry_msgs/Pose[] waypoints
float64[] waypoint_times # If empty, waypoint times are computed

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :kr_tracker_msgs/TrajectoryTrackerGoal "a9790f98f3dbe6c6131152f4cb52b2ee")

