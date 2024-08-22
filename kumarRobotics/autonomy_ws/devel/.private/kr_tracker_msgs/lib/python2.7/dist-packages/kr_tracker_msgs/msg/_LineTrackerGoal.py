# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kr_tracker_msgs/LineTrackerGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class LineTrackerGoal(genpy.Message):
  _md5sum = "ac56bfe78e143cd5e01249042f1cdb15"
  _type = "kr_tracker_msgs/LineTrackerGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
float64 x
float64 y
float64 z
float64 yaw
float64 v_des
float64 a_des
bool relative
time t_start
duration duration
"""
  __slots__ = ['x','y','z','yaw','v_des','a_des','relative','t_start','duration']
  _slot_types = ['float64','float64','float64','float64','float64','float64','bool','time','duration']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x,y,z,yaw,v_des,a_des,relative,t_start,duration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LineTrackerGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.v_des is None:
        self.v_des = 0.
      if self.a_des is None:
        self.a_des = 0.
      if self.relative is None:
        self.relative = False
      if self.t_start is None:
        self.t_start = genpy.Time()
      if self.duration is None:
        self.duration = genpy.Duration()
    else:
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.yaw = 0.
      self.v_des = 0.
      self.a_des = 0.
      self.relative = False
      self.t_start = genpy.Time()
      self.duration = genpy.Duration()

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
      buff.write(_get_struct_6dB2I2i().pack(_x.x, _x.y, _x.z, _x.yaw, _x.v_des, _x.a_des, _x.relative, _x.t_start.secs, _x.t_start.nsecs, _x.duration.secs, _x.duration.nsecs))
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
      if self.t_start is None:
        self.t_start = genpy.Time()
      if self.duration is None:
        self.duration = genpy.Duration()
      end = 0
      _x = self
      start = end
      end += 65
      (_x.x, _x.y, _x.z, _x.yaw, _x.v_des, _x.a_des, _x.relative, _x.t_start.secs, _x.t_start.nsecs, _x.duration.secs, _x.duration.nsecs,) = _get_struct_6dB2I2i().unpack(str[start:end])
      self.relative = bool(self.relative)
      self.t_start.canon()
      self.duration.canon()
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
      buff.write(_get_struct_6dB2I2i().pack(_x.x, _x.y, _x.z, _x.yaw, _x.v_des, _x.a_des, _x.relative, _x.t_start.secs, _x.t_start.nsecs, _x.duration.secs, _x.duration.nsecs))
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
      if self.t_start is None:
        self.t_start = genpy.Time()
      if self.duration is None:
        self.duration = genpy.Duration()
      end = 0
      _x = self
      start = end
      end += 65
      (_x.x, _x.y, _x.z, _x.yaw, _x.v_des, _x.a_des, _x.relative, _x.t_start.secs, _x.t_start.nsecs, _x.duration.secs, _x.duration.nsecs,) = _get_struct_6dB2I2i().unpack(str[start:end])
      self.relative = bool(self.relative)
      self.t_start.canon()
      self.duration.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6dB2I2i = None
def _get_struct_6dB2I2i():
    global _struct_6dB2I2i
    if _struct_6dB2I2i is None:
        _struct_6dB2I2i = struct.Struct("<6dB2I2i")
    return _struct_6dB2I2i
