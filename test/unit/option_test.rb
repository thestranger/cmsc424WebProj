# == Schema Information
#
# Table name: options
#
#  id         :integer          not null, primary key
#  question   :text
#  option     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
