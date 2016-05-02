# == Schema Information
#
# Table name: student_informations
#
#  id               :integer          not null, primary key
#  institution_id   :integer
#  degree_id        :integer
#  tutor_id         :integer
#  schoolarship     :boolean
#  activity_type_id :integer
#  activity_other   :text
#  startmonth       :integer
#  startyear        :integer
#  student_id       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_student_informations_on_student_id  (student_id)
#

class StudentInformation < ActiveRecord::Base
  belongs_to :student
end
