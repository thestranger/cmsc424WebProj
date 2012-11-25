# == Schema Information
#
# Table name: questions
#
#  id             :integer          not null, primary key
#  question       :text
#  correct_answer :string(255)
#  question_type  :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Question < ActiveRecord::Base
  attr_accessible :correct_answer, :question, :question_type
  has_many :options
  has_many :submitted_answers
  accepts_nested_attributes_for :submitted_answers
  has_many :contains
  has_many :assignments, :through => :contains
end
