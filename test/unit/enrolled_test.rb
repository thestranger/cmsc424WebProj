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

require 'test_helper'

class EnrolledTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
