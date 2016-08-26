# == Schema Information
#
# Table name: student_informations
#
#  id               :integer          not null, primary key
#  institution_name :string
#  degree_id        :integer
#  tutor_id         :integer
#  schoolarship     :integer
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

FactoryGirl.define do
  factory :student_information do
    institution_id 1
    degree_id 1
    tutor_id 1
    schoolarship false
    activity_type_id 1
    activity_other "MyText"
    startmonth 1
    startyear 1
    student nil
  end
end
