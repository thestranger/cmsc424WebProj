class Question < ActiveRecord::Base
  attr_accessible :correct_answer, :question, :question_type
end
