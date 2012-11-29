class Teaches < ActiveRecord::Base
  attr_accessible :course_id, :instructor_id, :isprofessor

  validates :instructor_id, presence: true
  validates :course_id, presence: true
  validates :isprofessor, presence: true
  validates :instructor_id, :uniqueness => {:scope => :course_id}

#  has_many :instructor
#  has_many :course
#  accepts_nested_attributes_for :instructor
#  accepts_nested_attributes_for :course
end
