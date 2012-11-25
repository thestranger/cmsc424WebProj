class Contain < ActiveRecord::Base
  attr_accessible :assignment_id, :question_id
  belongs_to :question
  belongs_to :assignment
end
