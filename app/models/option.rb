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

class Option < ActiveRecord::Base
  attr_accessible :option, :question
  belongs_to :question
end
