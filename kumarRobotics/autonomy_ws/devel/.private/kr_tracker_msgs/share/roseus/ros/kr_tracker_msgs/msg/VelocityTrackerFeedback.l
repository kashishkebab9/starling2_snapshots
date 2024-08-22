;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::VelocityTrackerFeedback)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'VelocityTrackerFeedback (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::VELOCITYTRACKERFEEDBACK")
  (make-package "KR_TRACKER_MSGS::VELOCITYTRACKERFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude VelocityTrackerFeedback.msg.html


(defclass kr_tracker_msgs::VelocityTrackerFeedback
  :super ros::object
  :slots (_duration ))

(defmethod kr_tracker_msgs::VelocityTrackerFeedback
  (:init
   (&key
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _duration (float __duration))
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kr_tracker_msgs::VelocityTrackerFeedback :md5sum-) "efce4fd63555f8abdd034fb55c87e5aa")
(setf (get kr_tracker_msgs::VelocityTrackerFeedback :datatype-) "kr_tracker_msgs/VelocityTrackerFeedback")
(setf (get kr_tracker_msgs::VelocityTrackerFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
# time in tracker
float64 duration


")



(provide :kr_tracker_msgs/VelocityTrackerFeedback "efce4fd63555f8abdd034fb55c87e5aa")

