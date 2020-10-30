; Auto-generated. Do not edit!


(cl:in-package week_4_exercises-msg)


;//! \htmlinclude CustomMessage.msg.html

(cl:defclass <CustomMessage> (roslisp-msg-protocol:ros-message)
  ((cosine
    :reader cosine
    :initarg :cosine
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (sine
    :reader sine
    :initarg :sine
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass CustomMessage (<CustomMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name week_4_exercises-msg:<CustomMessage> is deprecated: use week_4_exercises-msg:CustomMessage instead.")))

(cl:ensure-generic-function 'cosine-val :lambda-list '(m))
(cl:defmethod cosine-val ((m <CustomMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader week_4_exercises-msg:cosine-val is deprecated.  Use week_4_exercises-msg:cosine instead.")
  (cosine m))

(cl:ensure-generic-function 'sine-val :lambda-list '(m))
(cl:defmethod sine-val ((m <CustomMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader week_4_exercises-msg:sine-val is deprecated.  Use week_4_exercises-msg:sine instead.")
  (sine m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomMessage>) ostream)
  "Serializes a message object of type '<CustomMessage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cosine) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sine) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomMessage>) istream)
  "Deserializes a message object of type '<CustomMessage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cosine) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sine) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomMessage>)))
  "Returns string type for a message object of type '<CustomMessage>"
  "week_4_exercises/CustomMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomMessage)))
  "Returns string type for a message object of type 'CustomMessage"
  "week_4_exercises/CustomMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomMessage>)))
  "Returns md5sum for a message object of type '<CustomMessage>"
  "6ac03ac2f5c36d972264c4781c378a8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomMessage)))
  "Returns md5sum for a message object of type 'CustomMessage"
  "6ac03ac2f5c36d972264c4781c378a8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomMessage>)))
  "Returns full string definition for message of type '<CustomMessage>"
  (cl:format cl:nil "std_msgs/Float64 cosine~%std_msgs/Float64 sine~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomMessage)))
  "Returns full string definition for message of type 'CustomMessage"
  (cl:format cl:nil "std_msgs/Float64 cosine~%std_msgs/Float64 sine~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomMessage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cosine))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sine))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomMessage
    (cl:cons ':cosine (cosine msg))
    (cl:cons ':sine (sine msg))
))
