// Generated by gencpp from file kr_mav_msgs/StatusData.msg
// DO NOT EDIT!


#ifndef KR_MAV_MSGS_MESSAGE_STATUSDATA_H
#define KR_MAV_MSGS_MESSAGE_STATUSDATA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace kr_mav_msgs
{
template <class ContainerAllocator>
struct StatusData_
{
  typedef StatusData_<ContainerAllocator> Type;

  StatusData_()
    : header()
    , loop_rate(0)
    , voltage(0.0)
    , seq(0)  {
    }
  StatusData_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , loop_rate(0)
    , voltage(0.0)
    , seq(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint16_t _loop_rate_type;
  _loop_rate_type loop_rate;

   typedef double _voltage_type;
  _voltage_type voltage;

   typedef uint8_t _seq_type;
  _seq_type seq;





  typedef boost::shared_ptr< ::kr_mav_msgs::StatusData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_mav_msgs::StatusData_<ContainerAllocator> const> ConstPtr;

}; // struct StatusData_

typedef ::kr_mav_msgs::StatusData_<std::allocator<void> > StatusData;

typedef boost::shared_ptr< ::kr_mav_msgs::StatusData > StatusDataPtr;
typedef boost::shared_ptr< ::kr_mav_msgs::StatusData const> StatusDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_mav_msgs::StatusData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_mav_msgs::StatusData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_mav_msgs::StatusData_<ContainerAllocator1> & lhs, const ::kr_mav_msgs::StatusData_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.loop_rate == rhs.loop_rate &&
    lhs.voltage == rhs.voltage &&
    lhs.seq == rhs.seq;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_mav_msgs::StatusData_<ContainerAllocator1> & lhs, const ::kr_mav_msgs::StatusData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_mav_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_msgs::StatusData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_msgs::StatusData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_mav_msgs::StatusData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_mav_msgs::StatusData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_msgs::StatusData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_msgs::StatusData_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_mav_msgs::StatusData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c70a4ec4725273263ae176ad30f89553";
  }

  static const char* value(const ::kr_mav_msgs::StatusData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc70a4ec472527326ULL;
  static const uint64_t static_value2 = 0x3ae176ad30f89553ULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_mav_msgs::StatusData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_mav_msgs/StatusData";
  }

  static const char* value(const ::kr_mav_msgs::StatusData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_mav_msgs::StatusData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint16 loop_rate\n"
"float64 voltage\n"
"uint8 seq\n"
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
;
  }

  static const char* value(const ::kr_mav_msgs::StatusData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_mav_msgs::StatusData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.loop_rate);
      stream.next(m.voltage);
      stream.next(m.seq);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StatusData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_mav_msgs::StatusData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_mav_msgs::StatusData_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "loop_rate: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.loop_rate);
    s << indent << "voltage: ";
    Printer<double>::stream(s, indent + "  ", v.voltage);
    s << indent << "seq: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.seq);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_MAV_MSGS_MESSAGE_STATUSDATA_H