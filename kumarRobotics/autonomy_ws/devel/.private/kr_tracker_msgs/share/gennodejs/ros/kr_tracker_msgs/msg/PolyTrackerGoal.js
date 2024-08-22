// Auto-generated. Do not edit!

// (in-package kr_tracker_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Polynomial = require('./Polynomial.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PolyTrackerGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.t_start = null;
      this.order = null;
      this.set_yaw = null;
      this.separate_yaw = null;
      this.start_yaw = null;
      this.final_yaw = null;
      this.seg_x = null;
      this.seg_y = null;
      this.seg_z = null;
      this.seg_yaw = null;
      this.cpts_status = null;
      this.pos_pts = null;
      this.yaw_pts = null;
      this.knots = null;
    }
    else {
      if (initObj.hasOwnProperty('t_start')) {
        this.t_start = initObj.t_start
      }
      else {
        this.t_start = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('order')) {
        this.order = initObj.order
      }
      else {
        this.order = 0;
      }
      if (initObj.hasOwnProperty('set_yaw')) {
        this.set_yaw = initObj.set_yaw
      }
      else {
        this.set_yaw = false;
      }
      if (initObj.hasOwnProperty('separate_yaw')) {
        this.separate_yaw = initObj.separate_yaw
      }
      else {
        this.separate_yaw = false;
      }
      if (initObj.hasOwnProperty('start_yaw')) {
        this.start_yaw = initObj.start_yaw
      }
      else {
        this.start_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('final_yaw')) {
        this.final_yaw = initObj.final_yaw
      }
      else {
        this.final_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('seg_x')) {
        this.seg_x = initObj.seg_x
      }
      else {
        this.seg_x = [];
      }
      if (initObj.hasOwnProperty('seg_y')) {
        this.seg_y = initObj.seg_y
      }
      else {
        this.seg_y = [];
      }
      if (initObj.hasOwnProperty('seg_z')) {
        this.seg_z = initObj.seg_z
      }
      else {
        this.seg_z = [];
      }
      if (initObj.hasOwnProperty('seg_yaw')) {
        this.seg_yaw = initObj.seg_yaw
      }
      else {
        this.seg_yaw = [];
      }
      if (initObj.hasOwnProperty('cpts_status')) {
        this.cpts_status = initObj.cpts_status
      }
      else {
        this.cpts_status = 0;
      }
      if (initObj.hasOwnProperty('pos_pts')) {
        this.pos_pts = initObj.pos_pts
      }
      else {
        this.pos_pts = [];
      }
      if (initObj.hasOwnProperty('yaw_pts')) {
        this.yaw_pts = initObj.yaw_pts
      }
      else {
        this.yaw_pts = [];
      }
      if (initObj.hasOwnProperty('knots')) {
        this.knots = initObj.knots
      }
      else {
        this.knots = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PolyTrackerGoal
    // Serialize message field [t_start]
    bufferOffset = _serializer.time(obj.t_start, buffer, bufferOffset);
    // Serialize message field [order]
    bufferOffset = _serializer.uint8(obj.order, buffer, bufferOffset);
    // Serialize message field [set_yaw]
    bufferOffset = _serializer.bool(obj.set_yaw, buffer, bufferOffset);
    // Serialize message field [separate_yaw]
    bufferOffset = _serializer.bool(obj.separate_yaw, buffer, bufferOffset);
    // Serialize message field [start_yaw]
    bufferOffset = _serializer.float64(obj.start_yaw, buffer, bufferOffset);
    // Serialize message field [final_yaw]
    bufferOffset = _serializer.float64(obj.final_yaw, buffer, bufferOffset);
    // Serialize message field [seg_x]
    // Serialize the length for message field [seg_x]
    bufferOffset = _serializer.uint32(obj.seg_x.length, buffer, bufferOffset);
    obj.seg_x.forEach((val) => {
      bufferOffset = Polynomial.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [seg_y]
    // Serialize the length for message field [seg_y]
    bufferOffset = _serializer.uint32(obj.seg_y.length, buffer, bufferOffset);
    obj.seg_y.forEach((val) => {
      bufferOffset = Polynomial.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [seg_z]
    // Serialize the length for message field [seg_z]
    bufferOffset = _serializer.uint32(obj.seg_z.length, buffer, bufferOffset);
    obj.seg_z.forEach((val) => {
      bufferOffset = Polynomial.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [seg_yaw]
    // Serialize the length for message field [seg_yaw]
    bufferOffset = _serializer.uint32(obj.seg_yaw.length, buffer, bufferOffset);
    obj.seg_yaw.forEach((val) => {
      bufferOffset = Polynomial.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cpts_status]
    bufferOffset = _serializer.int8(obj.cpts_status, buffer, bufferOffset);
    // Serialize message field [pos_pts]
    // Serialize the length for message field [pos_pts]
    bufferOffset = _serializer.uint32(obj.pos_pts.length, buffer, bufferOffset);
    obj.pos_pts.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [yaw_pts]
    bufferOffset = _arraySerializer.float64(obj.yaw_pts, buffer, bufferOffset, null);
    // Serialize message field [knots]
    bufferOffset = _arraySerializer.float32(obj.knots, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PolyTrackerGoal
    let len;
    let data = new PolyTrackerGoal(null);
    // Deserialize message field [t_start]
    data.t_start = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [order]
    data.order = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [set_yaw]
    data.set_yaw = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [separate_yaw]
    data.separate_yaw = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [start_yaw]
    data.start_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_yaw]
    data.final_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [seg_x]
    // Deserialize array length for message field [seg_x]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.seg_x = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.seg_x[i] = Polynomial.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [seg_y]
    // Deserialize array length for message field [seg_y]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.seg_y = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.seg_y[i] = Polynomial.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [seg_z]
    // Deserialize array length for message field [seg_z]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.seg_z = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.seg_z[i] = Polynomial.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [seg_yaw]
    // Deserialize array length for message field [seg_yaw]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.seg_yaw = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.seg_yaw[i] = Polynomial.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cpts_status]
    data.cpts_status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [pos_pts]
    // Deserialize array length for message field [pos_pts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pos_pts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pos_pts[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [yaw_pts]
    data.yaw_pts = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [knots]
    data.knots = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.seg_x.forEach((val) => {
      length += Polynomial.getMessageSize(val);
    });
    object.seg_y.forEach((val) => {
      length += Polynomial.getMessageSize(val);
    });
    object.seg_z.forEach((val) => {
      length += Polynomial.getMessageSize(val);
    });
    object.seg_yaw.forEach((val) => {
      length += Polynomial.getMessageSize(val);
    });
    length += 24 * object.pos_pts.length;
    length += 8 * object.yaw_pts.length;
    length += 4 * object.knots.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kr_tracker_msgs/PolyTrackerGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5217be2ae52ee3910cfb3c0222972da5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PolyTrackerGoal(null);
    if (msg.t_start !== undefined) {
      resolved.t_start = msg.t_start;
    }
    else {
      resolved.t_start = {secs: 0, nsecs: 0}
    }

    if (msg.order !== undefined) {
      resolved.order = msg.order;
    }
    else {
      resolved.order = 0
    }

    if (msg.set_yaw !== undefined) {
      resolved.set_yaw = msg.set_yaw;
    }
    else {
      resolved.set_yaw = false
    }

    if (msg.separate_yaw !== undefined) {
      resolved.separate_yaw = msg.separate_yaw;
    }
    else {
      resolved.separate_yaw = false
    }

    if (msg.start_yaw !== undefined) {
      resolved.start_yaw = msg.start_yaw;
    }
    else {
      resolved.start_yaw = 0.0
    }

    if (msg.final_yaw !== undefined) {
      resolved.final_yaw = msg.final_yaw;
    }
    else {
      resolved.final_yaw = 0.0
    }

    if (msg.seg_x !== undefined) {
      resolved.seg_x = new Array(msg.seg_x.length);
      for (let i = 0; i < resolved.seg_x.length; ++i) {
        resolved.seg_x[i] = Polynomial.Resolve(msg.seg_x[i]);
      }
    }
    else {
      resolved.seg_x = []
    }

    if (msg.seg_y !== undefined) {
      resolved.seg_y = new Array(msg.seg_y.length);
      for (let i = 0; i < resolved.seg_y.length; ++i) {
        resolved.seg_y[i] = Polynomial.Resolve(msg.seg_y[i]);
      }
    }
    else {
      resolved.seg_y = []
    }

    if (msg.seg_z !== undefined) {
      resolved.seg_z = new Array(msg.seg_z.length);
      for (let i = 0; i < resolved.seg_z.length; ++i) {
        resolved.seg_z[i] = Polynomial.Resolve(msg.seg_z[i]);
      }
    }
    else {
      resolved.seg_z = []
    }

    if (msg.seg_yaw !== undefined) {
      resolved.seg_yaw = new Array(msg.seg_yaw.length);
      for (let i = 0; i < resolved.seg_yaw.length; ++i) {
        resolved.seg_yaw[i] = Polynomial.Resolve(msg.seg_yaw[i]);
      }
    }
    else {
      resolved.seg_yaw = []
    }

    if (msg.cpts_status !== undefined) {
      resolved.cpts_status = msg.cpts_status;
    }
    else {
      resolved.cpts_status = 0
    }

    if (msg.pos_pts !== undefined) {
      resolved.pos_pts = new Array(msg.pos_pts.length);
      for (let i = 0; i < resolved.pos_pts.length; ++i) {
        resolved.pos_pts[i] = geometry_msgs.msg.Point.Resolve(msg.pos_pts[i]);
      }
    }
    else {
      resolved.pos_pts = []
    }

    if (msg.yaw_pts !== undefined) {
      resolved.yaw_pts = msg.yaw_pts;
    }
    else {
      resolved.yaw_pts = []
    }

    if (msg.knots !== undefined) {
      resolved.knots = msg.knots;
    }
    else {
      resolved.knots = []
    }

    return resolved;
    }
};

module.exports = PolyTrackerGoal;
