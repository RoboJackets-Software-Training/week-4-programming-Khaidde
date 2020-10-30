// Auto-generated. Do not edit!

// (in-package week_4_exercises.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CustomMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cosine = null;
      this.sine = null;
    }
    else {
      if (initObj.hasOwnProperty('cosine')) {
        this.cosine = initObj.cosine
      }
      else {
        this.cosine = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('sine')) {
        this.sine = initObj.sine
      }
      else {
        this.sine = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomMessage
    // Serialize message field [cosine]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cosine, buffer, bufferOffset);
    // Serialize message field [sine]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.sine, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomMessage
    let len;
    let data = new CustomMessage(null);
    // Deserialize message field [cosine]
    data.cosine = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [sine]
    data.sine = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'week_4_exercises/CustomMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ac03ac2f5c36d972264c4781c378a8f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 cosine
    std_msgs/Float64 sine
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomMessage(null);
    if (msg.cosine !== undefined) {
      resolved.cosine = std_msgs.msg.Float64.Resolve(msg.cosine)
    }
    else {
      resolved.cosine = new std_msgs.msg.Float64()
    }

    if (msg.sine !== undefined) {
      resolved.sine = std_msgs.msg.Float64.Resolve(msg.sine)
    }
    else {
      resolved.sine = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = CustomMessage;
