# == Schema Information
#
# Table name: instructors
#
#  id         :integer          not null, primary key
#  ssn        :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Instructor < ActiveRecord::Base
  attr_accessible :name, :ssn
end
