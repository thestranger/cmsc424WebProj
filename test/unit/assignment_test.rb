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

require 'test_helper'

class AssignmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
