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

class Answered < ActiveRecord::Base
  attr_accessible :correct, :given_answer, :question, :student_id
end
