# == Schema Information
#
# Table name: assigneds
#
#  id            :integer          not null, primary key
#  student_id    :string(255)
#  course_id     :string(255)
#  assignment_id :integer
#  score         :decimal(, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Assigned < ActiveRecord::Base
  attr_accessible :assignment_id, :course_id, :score, :student_id
end
