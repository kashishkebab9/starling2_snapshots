// Generated by gencpp from file kr_tracker_msgs/TransitionRequest.msg
// DO NOT EDIT!


#ifndef KR_TRACKER_MSGS_MESSAGE_TRANSITIONREQUEST_H
#define KR_TRACKER_MSGS_MESSAGE_TRANSITIONREQUEST_H


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
struct TransitionRequest_
{
  typedef TransitionRequest_<ContainerAllocator> Type;

  TransitionRequest_()
    : tracker()  {
    }
  TransitionRequest_(const ContainerAllocator& _alloc)
    : tracker(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _tracker_type;
  _tracker_type tracker;





  typedef boost::shared_ptr< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TransitionRequest_

typedef ::kr_tracker_msgs::TransitionRequest_<std::allocator<void> > TransitionRequest;

typedef boost::shared_ptr< ::kr_tracker_msgs::TransitionRequest > TransitionRequestPtr;
typedef boost::shared_ptr< ::kr_tracker_msgs::TransitionRequest const> TransitionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.tracker == rhs.tracker;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_tracker_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3ed2ea9cfbf7aece5bb9c39adf1f02b7";
  }

  static const char* value(const ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3ed2ea9cfbf7aeceULL;
  static const uint64_t static_value2 = 0x5bb9c39adf1f02b7ULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_tracker_msgs/TransitionRequest";
  }

  static const char* value(const ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string tracker\n"
;
  }

  static const char* value(const ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tracker);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TransitionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_tracker_msgs::TransitionRequest_<ContainerAllocator>& v)
  {
    s << indent << "tracker: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.tracker);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_TRACKER_MSGS_MESSAGE_TRANSITIONREQUEST_H