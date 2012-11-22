# == Schema Information
#
# Table name: courseids
#
#  id            :integer          not null, primary key
#  department    :string(255)
#  course_number :integer
#  semester      :string(255)
#  year          :integer
#  section       :string(255)
#  course_id     :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Courseid < ActiveRecord::Base
  attr_accessible :course_id, :course_number, :department, :section, :semester, :year
end
