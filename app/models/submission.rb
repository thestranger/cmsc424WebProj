class Submission < ActiveRecord::Base
  attr_accessible :assignment_id, :score, :student_id, :submitted_answers_attributes
  validates :student_id, presence: true
  validates :assignment_id, presence: true

  has_many :submitted_answers
  belongs_to :student
  belongs_to :assignment
  accepts_nested_attributes_for :submitted_answers
end
