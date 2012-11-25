class SubmittedAnswer < ActiveRecord::Base
  attr_accessible :given_answer, :points, :question_id, :submission_id
  belongs_to :question
  belongs_to :submission
end
