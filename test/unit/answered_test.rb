# == Schema Information
#
# Table name: answereds
#
#  id           :integer          not null, primary key
#  student_id   :string(255)
#  question     :text
#  given_answer :string(255)
#  correct      :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class AnsweredTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
