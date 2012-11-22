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

require 'test_helper'

class CourseidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
