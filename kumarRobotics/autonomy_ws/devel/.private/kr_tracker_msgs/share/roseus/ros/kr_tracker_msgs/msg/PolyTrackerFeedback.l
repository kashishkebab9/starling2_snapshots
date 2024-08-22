;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::PolyTrackerFeedback)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'PolyTrackerFeedback (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::POLYTRACKERFEEDBACK")
  (make-package "KR_TRACKER_MSGS::POLYTRACKERFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude PolyTrackerFeedback.msg.html


(defclass kr_tracker_msgs::PolyTrackerFeedback
  :super ros::object
  :slots (_remaining_time ))

(defmethod kr_tracker_msgs::PolyTrackerFeedback
  (:init
   (&key
    ((:remaining_time __remaining_time) 0.0)
    )
   (send-super :init)
   (setq _remaining_time (float __remaining_time))
   self)
  (:remaining_time
   (&optional __remaining_time)
   (if __remaining_time (setq _remaining_time __remaining_time)) _remaining_time)
  (:serialization-length
   ()
   (+
    ;; float64 _remaining_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _remaining_time
       (sys::poke _remaining_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _remaining_time
     (setq _remaining_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kr_tracker_msgs::PolyTrackerFeedback :md5sum-) "b71b59cce98847d0bd0310eb052e8f3f")
(setf (get kr_tracker_msgs::PolyTrackerFeedback :datatype-) "kr_tracker_msgs/PolyTrackerFeedback")
(setf (get kr_tracker_msgs::PolyTrackerFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
float64 remaining_time


")



(provide :kr_tracker_msgs/PolyTrackerFeedback "b71b59cce98847d0bd0310eb052e8f3f")

