class Assignment < ActiveRecord::Base
  attr_accessible :assignment_id, :course_id, :due_date
end
