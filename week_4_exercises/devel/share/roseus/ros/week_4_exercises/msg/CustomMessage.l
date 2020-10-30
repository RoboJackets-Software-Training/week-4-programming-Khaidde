;; Auto-generated. Do not edit!


(when (boundp 'week_4_exercises::CustomMessage)
  (if (not (find-package "WEEK_4_EXERCISES"))
    (make-package "WEEK_4_EXERCISES"))
  (shadow 'CustomMessage (find-package "WEEK_4_EXERCISES")))
(unless (find-package "WEEK_4_EXERCISES::CUSTOMMESSAGE")
  (make-package "WEEK_4_EXERCISES::CUSTOMMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude CustomMessage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass week_4_exercises::CustomMessage
  :super ros::object
  :slots (_cosine _sine ))

(defmethod week_4_exercises::CustomMessage
  (:init
   (&key
    ((:cosine __cosine) (instance std_msgs::Float64 :init))
    ((:sine __sine) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _cosine __cosine)
   (setq _sine __sine)
   self)
  (:cosine
   (&rest __cosine)
   (if (keywordp (car __cosine))
       (send* _cosine __cosine)
     (progn
       (if __cosine (setq _cosine (car __cosine)))
       _cosine)))
  (:sine
   (&rest __sine)
   (if (keywordp (car __sine))
       (send* _sine __sine)
     (progn
       (if __sine (setq _sine (car __sine)))
       _sine)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _cosine
    (send _cosine :serialization-length)
    ;; std_msgs/Float64 _sine
    (send _sine :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _cosine
       (send _cosine :serialize s)
     ;; std_msgs/Float64 _sine
       (send _sine :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _cosine
     (send _cosine :deserialize buf ptr-) (incf ptr- (send _cosine :serialization-length))
   ;; std_msgs/Float64 _sine
     (send _sine :deserialize buf ptr-) (incf ptr- (send _sine :serialization-length))
   ;;
   self)
  )

(setf (get week_4_exercises::CustomMessage :md5sum-) "6ac03ac2f5c36d972264c4781c378a8f")
(setf (get week_4_exercises::CustomMessage :datatype-) "week_4_exercises/CustomMessage")
(setf (get week_4_exercises::CustomMessage :definition-)
      "std_msgs/Float64 cosine
std_msgs/Float64 sine

================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :week_4_exercises/CustomMessage "6ac03ac2f5c36d972264c4781c378a8f")


