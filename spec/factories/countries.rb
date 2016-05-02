# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string
#  citizen    :string
#  code       :string(12)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :country do
    name "MyString"
    citizen "MyString"
    code "MyString"
  end
end
