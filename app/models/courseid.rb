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
	SEMESTERS = ['Fall', 'Winter', 'Spring', 'Summer']
	
  attr_accessible :course_id, :coursenumber, :course_number, :department, :section, :semester, :year
  
  validates(:department, presence: true, length: { is: 4}, uniqueness: {case_sensitive: false})
  validates(:coursenumber, presence: true, length: { minimum: 3, maximum: 4}, uniqueness: {case_sensitive: false})
  validates(:semester, presence: true)
end
