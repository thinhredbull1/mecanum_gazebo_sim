// Auto-generated. Do not edit!

// (in-package std_stamped_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StringServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request = null;
    }
    else {
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StringServiceRequest
    // Serialize message field [request]
    bufferOffset = _serializer.string(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StringServiceRequest
    let len;
    let data = new StringServiceRequest(null);
    // Deserialize message field [request]
    data.request = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.request);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'std_stamped_msgs/StringServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b13f31f7a0a36901919f7ec0d9f40d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string request
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StringServiceRequest(null);
    if (msg.request !== undefined) {
      resolved.request = msg.request;
    }
    else {
      resolved.request = ''
    }

    return resolved;
    }
};

class StringServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.respond = null;
    }
    else {
      if (initObj.hasOwnProperty('respond')) {
        this.respond = initObj.respond
      }
      else {
        this.respond = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StringServiceResponse
    // Serialize message field [respond]
    bufferOffset = _serializer.string(obj.respond, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StringServiceResponse
    let len;
    let data = new StringServiceResponse(null);
    // Deserialize message field [respond]
    data.respond = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.respond);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'std_stamped_msgs/StringServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd16295e9691f9b17f9af4d745cb5798';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string respond
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StringServiceResponse(null);
    if (msg.respond !== undefined) {
      resolved.respond = msg.respond;
    }
    else {
      resolved.respond = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: StringServiceRequest,
  Response: StringServiceResponse,
  md5sum() { return '68e8d6dbd10fbe88400fb3bae3c6f122'; },
  datatype() { return 'std_stamped_msgs/StringService'; }
};
