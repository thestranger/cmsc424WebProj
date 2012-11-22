# == Schema Information
#
# Table name: contains
#
#  id            :integer          not null, primary key
#  course_id     :string(255)
#  assignment_id :integer
#  question      :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ContainTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
