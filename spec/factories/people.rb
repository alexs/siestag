# == Schema Information
#
# Table name: people
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

FactoryGirl.define do
  factory :person do
    name "MyString"
    middlename "MyString"
    lastname "MyString"
    birthplace 1
    nationality 1
    user_id 1
  end
end
