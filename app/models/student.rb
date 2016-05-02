# == Schema Information
#
# Table name: students
#
#  id          :integer          not null, primary key
#  name        :string
#  middlename  :string
#  lastname    :string
#  birthplace  :integer
#  nationality :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Student < ActiveRecord::Base
  belongs_to :user
  has_one :student_information
  #accepts_nested_attributes_for :student_information
end
