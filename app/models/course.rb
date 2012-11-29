# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  course_id   :string(255)
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Course < ActiveRecord::Base
  attr_accessible :course_id, :description, :name

  validates(:course_id, presence: true, length: { is: 7}, uniqueness: {case_sensitive: false})
  validates(:name, presence: true, uniqueness: {case_sensitive: false})
  validates(:description, presence: true)

  has_many :teaches#, dependent: :destroy
end

