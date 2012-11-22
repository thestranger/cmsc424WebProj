# == Schema Information
#
# Table name: professors
#
#  id             :integer          not null, primary key
#  instructor_ssn :string(255)
#  course_id      :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class ProfessorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
