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

class Country < ActiveRecord::Base
  has_one :student, class_name: 'Student', primary_key: 'id', foreign_key: 'birthplace'
  has_one :student, class_name: 'Student', primary_key: 'id', foreign_key: 'nationality'
end
