# == Schema Information
#
# Table name: hints
#
#  id         :integer          not null, primary key
#  question   :text
#  hint       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hint < ActiveRecord::Base
  attr_accessible :hint, :question
end
