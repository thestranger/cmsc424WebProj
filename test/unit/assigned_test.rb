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

require 'test_helper'

class AssignedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
