// Auto-generated. Do not edit!

// (in-package scan_safety.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SafetyEnableRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable_safety = null;
    }
    else {
      if (initObj.hasOwnProperty('enable_safety')) {
        this.enable_safety = initObj.enable_safety
      }
      else {
        this.enable_safety = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyEnableRequest
    // Serialize message field [enable_safety]
    bufferOffset = _serializer.bool(obj.enable_safety, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyEnableRequest
    let len;
    let data = new SafetyEnableRequest(null);
    // Deserialize message field [enable_safety]
    data.enable_safety = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scan_safety/SafetyEnableRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff906b73944101bb5b1e4ddfcc11941f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool enable_safety   # Request to enable/disable safety
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SafetyEnableRequest(null);
    if (msg.enable_safety !== undefined) {
      resolved.enable_safety = msg.enable_safety;
    }
    else {
      resolved.enable_safety = false
    }

    return resolved;
    }
};

class SafetyEnableResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyEnableResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyEnableResponse
    let len;
    let data = new SafetyEnableResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scan_safety/SafetyEnableResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success               # Indicate if the request was successful or not
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SafetyEnableResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SafetyEnableRequest,
  Response: SafetyEnableResponse,
  md5sum() { return 'ae7af90fe0b005a2c2be5fe5227bcaa2'; },
  datatype() { return 'scan_safety/SafetyEnable'; }
};
