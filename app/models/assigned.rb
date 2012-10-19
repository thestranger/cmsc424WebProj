class Assigned < ActiveRecord::Base
  attr_accessible :assignment_id, :course_id, :score, :student_id
end
