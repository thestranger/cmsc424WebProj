# == Schema Information
#
# Table name: assignments
#
#  id            :integer          not null, primary key
#  course_id     :string(255)
#  assignment_id :integer
#  due_date      :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Assignment < ActiveRecord::Base
  attr_accessible :assignment_id, :course_id, :due_date, :question
  attr_accessor :question_select

  belongs_to :course
  has_many :submissions
  has_many :contains, :dependent => :destroy
  has_many :questions, :through => :contains
  accepts_nested_attributes_for :contains
  accepts_nested_attributes_for :questions
end
