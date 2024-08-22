// Auto-generated. Do not edit!

// (in-package kr_tracker_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Polynomial {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.degree = null;
      this.dt = null;
      this.basis = null;
      this.coeffs = null;
    }
    else {
      if (initObj.hasOwnProperty('degree')) {
        this.degree = initObj.degree
      }
      else {
        this.degree = 0;
      }
      if (initObj.hasOwnProperty('dt')) {
        this.dt = initObj.dt
      }
      else {
        this.dt = 0.0;
      }
      if (initObj.hasOwnProperty('basis')) {
        this.basis = initObj.basis
      }
      else {
        this.basis = 0;
      }
      if (initObj.hasOwnProperty('coeffs')) {
        this.coeffs = initObj.coeffs
      }
      else {
        this.coeffs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Polynomial
    // Serialize message field [degree]
    bufferOffset = _serializer.int32(obj.degree, buffer, bufferOffset);
    // Serialize message field [dt]
    bufferOffset = _serializer.float32(obj.dt, buffer, bufferOffset);
    // Serialize message field [basis]
    bufferOffset = _serializer.uint8(obj.basis, buffer, bufferOffset);
    // Serialize message field [coeffs]
    bufferOffset = _arraySerializer.float32(obj.coeffs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Polynomial
    let len;
    let data = new Polynomial(null);
    // Deserialize message field [degree]
    data.degree = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dt]
    data.dt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [basis]
    data.basis = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [coeffs]
    data.coeffs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.coeffs.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kr_tracker_msgs/Polynomial';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '364f75c2ff53cd714f15f5974ff407e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # There should be 1 more coeffs than the degree
    int32 degree
    float32 dt
    uint8 basis
    float32[] coeffs
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Polynomial(null);
    if (msg.degree !== undefined) {
      resolved.degree = msg.degree;
    }
    else {
      resolved.degree = 0
    }

    if (msg.dt !== undefined) {
      resolved.dt = msg.dt;
    }
    else {
      resolved.dt = 0.0
    }

    if (msg.basis !== undefined) {
      resolved.basis = msg.basis;
    }
    else {
      resolved.basis = 0
    }

    if (msg.coeffs !== undefined) {
      resolved.coeffs = msg.coeffs;
    }
    else {
      resolved.coeffs = []
    }

    return resolved;
    }
};

module.exports = Polynomial;
