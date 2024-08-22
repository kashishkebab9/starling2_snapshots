# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kr_tracker_msgs/PolyTrackerAction.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import actionlib_msgs.msg
import genpy
import geometry_msgs.msg
import kr_tracker_msgs.msg
import std_msgs.msg

class PolyTrackerAction(genpy.Message):
  _md5sum = "b4e3a59e3ad3e6d187dcdad78a3d1cd1"
  _type = "kr_tracker_msgs/PolyTrackerAction"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

PolyTrackerActionGoal action_goal
PolyTrackerActionResult action_result
PolyTrackerActionFeedback action_feedback

================================================================================
MSG: kr_tracker_msgs/PolyTrackerActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
PolyTrackerGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: kr_tracker_msgs/PolyTrackerGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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

================================================================================
MSG: kr_tracker_msgs/PolyTrackerActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
PolyTrackerResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: kr_tracker_msgs/PolyTrackerResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
float64 total_time
float64 total_distance_travelled

================================================================================
MSG: kr_tracker_msgs/PolyTrackerActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
PolyTrackerFeedback feedback

================================================================================
MSG: kr_tracker_msgs/PolyTrackerFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
float64 remaining_time

"""
  __slots__ = ['action_goal','action_result','action_feedback']
  _slot_types = ['kr_tracker_msgs/PolyTrackerActionGoal','kr_tracker_msgs/PolyTrackerActionResult','kr_tracker_msgs/PolyTrackerActionFeedback']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       action_goal,action_result,action_feedback

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PolyTrackerAction, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.action_goal is None:
        self.action_goal = kr_tracker_msgs.msg.PolyTrackerActionGoal()
      if self.action_result is None:
        self.action_result = kr_tracker_msgs.msg.PolyTrackerActionResult()
      if self.action_feedback is None:
        self.action_feedback = kr_tracker_msgs.msg.PolyTrackerActionFeedback()
    else:
      self.action_goal = kr_tracker_msgs.msg.PolyTrackerActionGoal()
      self.action_result = kr_tracker_msgs.msg.PolyTrackerActionResult()
      self.action_feedback = kr_tracker_msgs.msg.PolyTrackerActionFeedback()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs))
      _x = self.action_goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs))
      _x = self.action_goal.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I3B2d().pack(_x.action_goal.goal.t_start.secs, _x.action_goal.goal.t_start.nsecs, _x.action_goal.goal.order, _x.action_goal.goal.set_yaw, _x.action_goal.goal.separate_yaw, _x.action_goal.goal.start_yaw, _x.action_goal.goal.final_yaw))
      length = len(self.action_goal.goal.seg_x)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.seg_x:
        _x = val1
        buff.write(_get_struct_ifB().pack(_x.degree, _x.dt, _x.basis))
        length = len(val1.coeffs)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.coeffs))
      length = len(self.action_goal.goal.seg_y)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.seg_y:
        _x = val1
        buff.write(_get_struct_ifB().pack(_x.degree, _x.dt, _x.basis))
        length = len(val1.coeffs)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.coeffs))
      length = len(self.action_goal.goal.seg_z)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.seg_z:
        _x = val1
        buff.write(_get_struct_ifB().pack(_x.degree, _x.dt, _x.basis))
        length = len(val1.coeffs)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.coeffs))
      length = len(self.action_goal.goal.seg_yaw)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.seg_yaw:
        _x = val1
        buff.write(_get_struct_ifB().pack(_x.degree, _x.dt, _x.basis))
        length = len(val1.coeffs)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.coeffs))
      _x = self.action_goal.goal.cpts_status
      buff.write(_get_struct_b().pack(_x))
      length = len(self.action_goal.goal.pos_pts)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.pos_pts:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.action_goal.goal.yaw_pts)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.action_goal.goal.yaw_pts))
      length = len(self.action_goal.goal.knots)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.action_goal.goal.knots))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs))
      _x = self.action_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs))
      _x = self.action_result.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_result.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_result.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2d3I().pack(_x.action_result.result.total_time, _x.action_result.result.total_distance_travelled, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs))
      _x = self.action_feedback.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs))
      _x = self.action_feedback.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_feedback.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_feedback.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_feedback.feedback.remaining_time
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.action_goal is None:
        self.action_goal = kr_tracker_msgs.msg.PolyTrackerActionGoal()
      if self.action_result is None:
        self.action_result = kr_tracker_msgs.msg.PolyTrackerActionResult()
      if self.action_feedback is None:
        self.action_feedback = kr_tracker_msgs.msg.PolyTrackerActionFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_goal.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 27
      (_x.action_goal.goal.t_start.secs, _x.action_goal.goal.t_start.nsecs, _x.action_goal.goal.order, _x.action_goal.goal.set_yaw, _x.action_goal.goal.separate_yaw, _x.action_goal.goal.start_yaw, _x.action_goal.goal.final_yaw,) = _get_struct_2I3B2d().unpack(str[start:end])
      self.action_goal.goal.set_yaw = bool(self.action_goal.goal.set_yaw)
      self.action_goal.goal.separate_yaw = bool(self.action_goal.goal.separate_yaw)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.seg_x = []
      for i in range(0, length):
        val1 = kr_tracker_msgs.msg.Polynomial()
        _x = val1
        start = end
        end += 9
        (_x.degree, _x.dt, _x.basis,) = _get_struct_ifB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.coeffs = s.unpack(str[start:end])
        self.action_goal.goal.seg_x.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.seg_y = []
      for i in range(0, length):
        val1 = kr_tracker_msgs.msg.Polynomial()
        _x = val1
        start = end
        end += 9
        (_x.degree, _x.dt, _x.basis,) = _get_struct_ifB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.coeffs = s.unpack(str[start:end])
        self.action_goal.goal.seg_y.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.seg_z = []
      for i in range(0, length):
        val1 = kr_tracker_msgs.msg.Polynomial()
        _x = val1
        start = end
        end += 9
        (_x.degree, _x.dt, _x.basis,) = _get_struct_ifB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.coeffs = s.unpack(str[start:end])
        self.action_goal.goal.seg_z.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.seg_yaw = []
      for i in range(0, length):
        val1 = kr_tracker_msgs.msg.Polynomial()
        _x = val1
        start = end
        end += 9
        (_x.degree, _x.dt, _x.basis,) = _get_struct_ifB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.coeffs = s.unpack(str[start:end])
        self.action_goal.goal.seg_yaw.append(val1)
      start = end
      end += 1
      (self.action_goal.goal.cpts_status,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.pos_pts = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.action_goal.goal.pos_pts.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.action_goal.goal.yaw_pts = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.action_goal.goal.knots = s.unpack(str[start:end])
      _x = self
      start = end
      end += 12
      (_x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_result.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.status.text = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.action_result.result.total_time, _x.action_result.result.total_distance_travelled, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs,) = _get_struct_2d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_feedback.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.status.text = str[start:end]
      start = end
      end += 8
      (self.action_feedback.feedback.remaining_time,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs))
      _x = self.action_goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs))
      _x = self.action_goal.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I3B2d().pack(_x.action_goal.goal.t_start.secs, _x.action_goal.goal.t_start.nsecs, _x.action_goal.goal.order, _x.action_goal.goal.set_yaw, _x.action_goal.goal.separate_yaw, _x.action_goal.goal.start_yaw, _x.action_goal.goal.final_yaw))
      length = len(self.action_goal.goal.seg_x)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.seg_x:
        _x = val1
        buff.write(_get_struct_ifB().pack(_x.degree, _x.dt, _x.basis))
        length = len(val1.coeffs)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.coeffs.tostring())
      length = len(self.action_goal.goal.seg_y)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.seg_y:
        _x = val1
        buff.write(_get_struct_ifB().pack(_x.degree, _x.dt, _x.basis))
        length = len(val1.coeffs)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.coeffs.tostring())
      length = len(self.action_goal.goal.seg_z)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.seg_z:
        _x = val1
        buff.write(_get_struct_ifB().pack(_x.degree, _x.dt, _x.basis))
        length = len(val1.coeffs)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.coeffs.tostring())
      length = len(self.action_goal.goal.seg_yaw)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.seg_yaw:
        _x = val1
        buff.write(_get_struct_ifB().pack(_x.degree, _x.dt, _x.basis))
        length = len(val1.coeffs)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.coeffs.tostring())
      _x = self.action_goal.goal.cpts_status
      buff.write(_get_struct_b().pack(_x))
      length = len(self.action_goal.goal.pos_pts)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.pos_pts:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.action_goal.goal.yaw_pts)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.action_goal.goal.yaw_pts.tostring())
      length = len(self.action_goal.goal.knots)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.action_goal.goal.knots.tostring())
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs))
      _x = self.action_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs))
      _x = self.action_result.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_result.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_result.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2d3I().pack(_x.action_result.result.total_time, _x.action_result.result.total_distance_travelled, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs))
      _x = self.action_feedback.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs))
      _x = self.action_feedback.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_feedback.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_feedback.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.action_feedback.feedback.remaining_time
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.action_goal is None:
        self.action_goal = kr_tracker_msgs.msg.PolyTrackerActionGoal()
      if self.action_result is None:
        self.action_result = kr_tracker_msgs.msg.PolyTrackerActionResult()
      if self.action_feedback is None:
        self.action_feedback = kr_tracker_msgs.msg.PolyTrackerActionFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_goal.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 27
      (_x.action_goal.goal.t_start.secs, _x.action_goal.goal.t_start.nsecs, _x.action_goal.goal.order, _x.action_goal.goal.set_yaw, _x.action_goal.goal.separate_yaw, _x.action_goal.goal.start_yaw, _x.action_goal.goal.final_yaw,) = _get_struct_2I3B2d().unpack(str[start:end])
      self.action_goal.goal.set_yaw = bool(self.action_goal.goal.set_yaw)
      self.action_goal.goal.separate_yaw = bool(self.action_goal.goal.separate_yaw)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.seg_x = []
      for i in range(0, length):
        val1 = kr_tracker_msgs.msg.Polynomial()
        _x = val1
        start = end
        end += 9
        (_x.degree, _x.dt, _x.basis,) = _get_struct_ifB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.coeffs = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.action_goal.goal.seg_x.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.seg_y = []
      for i in range(0, length):
        val1 = kr_tracker_msgs.msg.Polynomial()
        _x = val1
        start = end
        end += 9
        (_x.degree, _x.dt, _x.basis,) = _get_struct_ifB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.coeffs = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.action_goal.goal.seg_y.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.seg_z = []
      for i in range(0, length):
        val1 = kr_tracker_msgs.msg.Polynomial()
        _x = val1
        start = end
        end += 9
        (_x.degree, _x.dt, _x.basis,) = _get_struct_ifB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.coeffs = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.action_goal.goal.seg_z.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.seg_yaw = []
      for i in range(0, length):
        val1 = kr_tracker_msgs.msg.Polynomial()
        _x = val1
        start = end
        end += 9
        (_x.degree, _x.dt, _x.basis,) = _get_struct_ifB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.coeffs = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.action_goal.goal.seg_yaw.append(val1)
      start = end
      end += 1
      (self.action_goal.goal.cpts_status,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.pos_pts = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.action_goal.goal.pos_pts.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.action_goal.goal.yaw_pts = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.action_goal.goal.knots = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 12
      (_x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_result.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_result.status.text = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.action_result.result.total_time, _x.action_result.result.total_distance_travelled, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs,) = _get_struct_2d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.goal_id.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_feedback.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action_feedback.status.text = str[start:end]
      start = end
      end += 8
      (self.action_feedback.feedback.remaining_time,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2I3B2d = None
def _get_struct_2I3B2d():
    global _struct_2I3B2d
    if _struct_2I3B2d is None:
        _struct_2I3B2d = struct.Struct("<2I3B2d")
    return _struct_2I3B2d
_struct_2d3I = None
def _get_struct_2d3I():
    global _struct_2d3I
    if _struct_2d3I is None:
        _struct_2d3I = struct.Struct("<2d3I")
    return _struct_2d3I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
_struct_ifB = None
def _get_struct_ifB():
    global _struct_ifB
    if _struct_ifB is None:
        _struct_ifB = struct.Struct("<ifB")
    return _struct_ifB
