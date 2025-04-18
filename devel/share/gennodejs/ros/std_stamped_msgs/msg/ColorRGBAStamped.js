// Auto-generated. Do not edit!

// (in-package std_stamped_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ColorRGBAStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.r = null;
      this.g = null;
      this.b = null;
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
      }
      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g
      }
      else {
        this.g = 0.0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0.0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorRGBAStamped
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.float32(obj.r, buffer, bufferOffset);
    // Serialize message field [g]
    bufferOffset = _serializer.float32(obj.g, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.float32(obj.b, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float32(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorRGBAStamped
    let len;
    let data = new ColorRGBAStamped(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [g]
    data.g = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'std_stamped_msgs/ColorRGBAStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77543cf1c81098c248475a15489ec55d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    float32 r
    float32 g
    float32 b
    float32 a
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ColorRGBAStamped(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = 0.0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0.0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    return resolved;
    }
};

module.exports = ColorRGBAStamped;
