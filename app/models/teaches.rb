class Teaches < ActiveRecord::Base
  attr_accessible :course_id, :instructor_id, :isprofessor

  validates :instructor_id, presence: true
  validates :course_id, presence: true
  validates :isprofessor, presence: true
  
  belongs_to :instructor
  belongs_to :course
end
