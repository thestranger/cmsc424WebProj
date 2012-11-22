# == Schema Information
#
# Table name: enrolleds
#
#  id         :integer          not null, primary key
#  student_id :string(255)
#  course_id  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Enrolled < ActiveRecord::Base
  attr_accessible :course_id, :student_id
end
