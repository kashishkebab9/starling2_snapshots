// Generated by gencpp from file kr_tracker_msgs/CircleTrackerResult.msg
// DO NOT EDIT!


#ifndef KR_TRACKER_MSGS_MESSAGE_CIRCLETRACKERRESULT_H
#define KR_TRACKER_MSGS_MESSAGE_CIRCLETRACKERRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kr_tracker_msgs
{
template <class ContainerAllocator>
struct CircleTrackerResult_
{
  typedef CircleTrackerResult_<ContainerAllocator> Type;

  CircleTrackerResult_()
    : duration(0.0)
    , length(0.0)  {
    }
  CircleTrackerResult_(const ContainerAllocator& _alloc)
    : duration(0.0)
    , length(0.0)  {
  (void)_alloc;
    }



   typedef double _duration_type;
  _duration_type duration;

   typedef double _length_type;
  _length_type length;





  typedef boost::shared_ptr< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> const> ConstPtr;

}; // struct CircleTrackerResult_

typedef ::kr_tracker_msgs::CircleTrackerResult_<std::allocator<void> > CircleTrackerResult;

typedef boost::shared_ptr< ::kr_tracker_msgs::CircleTrackerResult > CircleTrackerResultPtr;
typedef boost::shared_ptr< ::kr_tracker_msgs::CircleTrackerResult const> CircleTrackerResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator2> & rhs)
{
  return lhs.duration == rhs.duration &&
    lhs.length == rhs.length;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_tracker_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d534c0800798f178462d74136c98ee91";
  }

  static const char* value(const ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd534c0800798f178ULL;
  static const uint64_t static_value2 = 0x462d74136c98ee91ULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_tracker_msgs/CircleTrackerResult";
  }

  static const char* value(const ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"# time duration of the trajectory\n"
"float64 duration \n"
"# approximate arc length of the trajectory (ie. sum of distances between position commands)\n"
"float64 length \n"
;
  }

  static const char* value(const ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.duration);
      stream.next(m.length);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CircleTrackerResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_tracker_msgs::CircleTrackerResult_<ContainerAllocator>& v)
  {
    s << indent << "duration: ";
    Printer<double>::stream(s, indent + "  ", v.duration);
    s << indent << "length: ";
    Printer<double>::stream(s, indent + "  ", v.length);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_TRACKER_MSGS_MESSAGE_CIRCLETRACKERRESULT_H
