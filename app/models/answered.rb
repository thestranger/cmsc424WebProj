class Answered < ActiveRecord::Base
  attr_accessible :correct, :given_answer, :question, :student_id
end
