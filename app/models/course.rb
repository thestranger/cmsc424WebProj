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
end

=begin
class Instructor < ActiveRecord::Base
  attr_accessible :name, :email, :ssn, :password, :password_confirmation
  has_secure_password

  before_save { |student| student.email = email.downcase }
  before_save :create_remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates(:name, presence: true, length: { maximum: 50})
  validates(:password, presence: true, length: {minimum: 6})
  validates(:password_confirmation, presence: true)
  validates(:ssn, presence: true, length: { is: 9}, uniqueness: {case_sensitive: false})

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
=end