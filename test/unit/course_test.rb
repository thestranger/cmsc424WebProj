# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  course_id   :string(255)
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
