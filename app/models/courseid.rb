class Courseid < ActiveRecord::Base
  attr_accessible :course_id, :course_number, :department, :section, :semester, :year
end
