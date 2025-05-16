// Auto-generated. Do not edit!

// (in-package safety_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SafetyJob {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.footprint = null;
      this.jobs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('footprint')) {
        this.footprint = initObj.footprint
      }
      else {
        this.footprint = new geometry_msgs.msg.Polygon();
      }
      if (initObj.hasOwnProperty('jobs')) {
        this.jobs = initObj.jobs
      }
      else {
        this.jobs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyJob
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [footprint]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.footprint, buffer, bufferOffset);
    // Serialize message field [jobs]
    // Serialize the length for message field [jobs]
    bufferOffset = _serializer.uint32(obj.jobs.length, buffer, bufferOffset);
    obj.jobs.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Polygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyJob
    let len;
    let data = new SafetyJob(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [footprint]
    data.footprint = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [jobs]
    // Deserialize array length for message field [jobs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.jobs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.jobs[i] = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += geometry_msgs.msg.Polygon.getMessageSize(object.footprint);
    object.jobs.forEach((val) => {
      length += geometry_msgs.msg.Polygon.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'safety_msgs/SafetyJob';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6ba680ca90f32e0964e7c70a10d72b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
     Header header
    
     geometry_msgs/Polygon footprint  # polygon of footprint
     geometry_msgs/Polygon[] jobs     # polygon of jobs
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
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SafetyJob(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.footprint !== undefined) {
      resolved.footprint = geometry_msgs.msg.Polygon.Resolve(msg.footprint)
    }
    else {
      resolved.footprint = new geometry_msgs.msg.Polygon()
    }

    if (msg.jobs !== undefined) {
      resolved.jobs = new Array(msg.jobs.length);
      for (let i = 0; i < resolved.jobs.length; ++i) {
        resolved.jobs[i] = geometry_msgs.msg.Polygon.Resolve(msg.jobs[i]);
      }
    }
    else {
      resolved.jobs = []
    }

    return resolved;
    }
};

module.exports = SafetyJob;
