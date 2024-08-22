; Auto-generated. Do not edit!


(cl:in-package kr_tracker_msgs-msg)


;//! \htmlinclude LissajousTrackerAction.msg.html

(cl:defclass <LissajousTrackerAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type kr_tracker_msgs-msg:LissajousTrackerActionGoal
    :initform (cl:make-instance 'kr_tracker_msgs-msg:LissajousTrackerActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type kr_tracker_msgs-msg:LissajousTrackerActionResult
    :initform (cl:make-instance 'kr_tracker_msgs-msg:LissajousTrackerActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type kr_tracker_msgs-msg:LissajousTrackerActionFeedback
    :initform (cl:make-instance 'kr_tracker_msgs-msg:LissajousTrackerActionFeedback)))
)

(cl:defclass LissajousTrackerAction (<LissajousTrackerAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LissajousTrackerAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LissajousTrackerAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_tracker_msgs-msg:<LissajousTrackerAction> is deprecated: use kr_tracker_msgs-msg:LissajousTrackerAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <LissajousTrackerAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:action_goal-val is deprecated.  Use kr_tracker_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <LissajousTrackerAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:action_result-val is deprecated.  Use kr_tracker_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <LissajousTrackerAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:action_feedback-val is deprecated.  Use kr_tracker_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LissajousTrackerAction>) ostream)
  "Serializes a message object of type '<LissajousTrackerAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LissajousTrackerAction>) istream)
  "Deserializes a message object of type '<LissajousTrackerAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LissajousTrackerAction>)))
  "Returns string type for a message object of type '<LissajousTrackerAction>"
  "kr_tracker_msgs/LissajousTrackerAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LissajousTrackerAction)))
  "Returns string type for a message object of type 'LissajousTrackerAction"
  "kr_tracker_msgs/LissajousTrackerAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LissajousTrackerAction>)))
  "Returns md5sum for a message object of type '<LissajousTrackerAction>"
  "e8723ec2ddb3ab9918f37acafd8c9abd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LissajousTrackerAction)))
  "Returns md5sum for a message object of type 'LissajousTrackerAction"
  "e8723ec2ddb3ab9918f37acafd8c9abd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LissajousTrackerAction>)))
  "Returns full string definition for message of type '<LissajousTrackerAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%LissajousTrackerActionGoal action_goal~%LissajousTrackerActionResult action_result~%LissajousTrackerActionFeedback action_feedback~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%LissajousTrackerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%float64 x_amp~%float64 y_amp~%float64 z_amp~%float64 yaw_amp~%float64 x_num_periods~%float64 y_num_periods~%float64 z_num_periods~%float64 yaw_num_periods~%float64 period~%float64 num_cycles~%float64 ramp_time~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%LissajousTrackerResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%# send back goal~%float64 x~%float64 y~%float64 z~%float64 yaw~%# time duration of the trajectory~%float64 duration~%# approximate arc length of the trajectory (ie. sum of distances between position commands)~%float64 length~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%LissajousTrackerFeedback feedback~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%# distance from the goal~%float64 time_to_completion~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LissajousTrackerAction)))
  "Returns full string definition for message of type 'LissajousTrackerAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%LissajousTrackerActionGoal action_goal~%LissajousTrackerActionResult action_result~%LissajousTrackerActionFeedback action_feedback~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%LissajousTrackerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%float64 x_amp~%float64 y_amp~%float64 z_amp~%float64 yaw_amp~%float64 x_num_periods~%float64 y_num_periods~%float64 z_num_periods~%float64 yaw_num_periods~%float64 period~%float64 num_cycles~%float64 ramp_time~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%LissajousTrackerResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%# send back goal~%float64 x~%float64 y~%float64 z~%float64 yaw~%# time duration of the trajectory~%float64 duration~%# approximate arc length of the trajectory (ie. sum of distances between position commands)~%float64 length~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%LissajousTrackerFeedback feedback~%~%================================================================================~%MSG: kr_tracker_msgs/LissajousTrackerFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%# distance from the goal~%float64 time_to_completion~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LissajousTrackerAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LissajousTrackerAction>))
  "Converts a ROS message object to a list"
  (cl:list 'LissajousTrackerAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))