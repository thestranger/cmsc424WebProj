# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  student_id :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  attr_accessible :name, :email, :student_id, :password, :password_confirmation
  has_secure_password

  before_save { |student| student.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates(:name, presence: true, length: { maximum: 50})
  validates(:password, presence: true, length: {minimum: 6})
  validates(:password_confirmation, presence: true)
  validates(:student_id, presence: true, length: { is: 9}, uniqueness: {case_sensitive: false})
end
