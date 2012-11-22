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
  attr_accessible :assignment_id, :course_id, :due_date
end
