# == Schema Information
#
# Table name: degrees
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :degree do
    name "MyString"
  end
end
