// Generated by gencpp from file kr_tracker_msgs/LissajousAdderAction.msg
// DO NOT EDIT!


#ifndef KR_TRACKER_MSGS_MESSAGE_LISSAJOUSADDERACTION_H
#define KR_TRACKER_MSGS_MESSAGE_LISSAJOUSADDERACTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kr_tracker_msgs/LissajousAdderActionGoal.h>
#include <kr_tracker_msgs/LissajousAdderActionResult.h>
#include <kr_tracker_msgs/LissajousAdderActionFeedback.h>

namespace kr_tracker_msgs
{
template <class ContainerAllocator>
struct LissajousAdderAction_
{
  typedef LissajousAdderAction_<ContainerAllocator> Type;

  LissajousAdderAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  LissajousAdderAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kr_tracker_msgs::LissajousAdderActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::kr_tracker_msgs::LissajousAdderActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::kr_tracker_msgs::LissajousAdderActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> const> ConstPtr;

}; // struct LissajousAdderAction_

typedef ::kr_tracker_msgs::LissajousAdderAction_<std::allocator<void> > LissajousAdderAction;

typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousAdderAction > LissajousAdderActionPtr;
typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousAdderAction const> LissajousAdderActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_tracker_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "518ad5daf050f120c7c518e9332e2220";
  }

  static const char* value(const ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x518ad5daf050f120ULL;
  static const uint64_t static_value2 = 0xc7c518e9332e2220ULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_tracker_msgs/LissajousAdderAction";
  }

  static const char* value(const ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"LissajousAdderActionGoal action_goal\n"
"LissajousAdderActionResult action_result\n"
"LissajousAdderActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/LissajousAdderActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"LissajousAdderGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/LissajousAdderGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"float64[2] x_amp\n"
"float64[2] y_amp\n"
"float64[2] z_amp\n"
"float64[2] yaw_amp\n"
"float64[2] x_num_periods\n"
"float64[2] y_num_periods\n"
"float64[2] z_num_periods\n"
"float64[2] yaw_num_periods\n"
"float64[2] period\n"
"float64[2] num_cycles\n"
"float64[2] ramp_time\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/LissajousAdderActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"LissajousAdderResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/LissajousAdderResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"# send back goal\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 yaw\n"
"# time duration of the trajectory\n"
"float64 duration\n"
"# approximate arc length of the trajectory (ie. sum of distances between position commands)\n"
"float64 length\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/LissajousAdderActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"LissajousAdderFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/LissajousAdderFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"# distance from the goal\n"
"float64 time_to_completion\n"
"\n"
;
  }

  static const char* value(const ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LissajousAdderAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_tracker_msgs::LissajousAdderAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::kr_tracker_msgs::LissajousAdderActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::kr_tracker_msgs::LissajousAdderActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::kr_tracker_msgs::LissajousAdderActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_TRACKER_MSGS_MESSAGE_LISSAJOUSADDERACTION_H
