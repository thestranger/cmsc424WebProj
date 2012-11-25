class Contain < ActiveRecord::Base

#  attr_accessible :assignment_id, :course_id, :question
  attr_accessible :assignment_id, :question_id

#  has_many :assignments, :dependent => :destroy
#  has_many :questions, :dependent => :destroy
  belongs_to :question
  belongs_to :assignment
#  accepts_nested_attributes_for :questions

end
