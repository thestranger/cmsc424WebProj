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
end
