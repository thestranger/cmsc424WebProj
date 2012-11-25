# == Schema Information
#
# Table name: contains
#
#  id            :integer          not null, primary key
#  course_id     :string(255)
#  assignment_id :integer
#  question      :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Contain < ActiveRecord::Base
  attr_accessible :assignment_id, :course_id, :question

  has_many :assignments, :dependent => :destroy
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions
end
