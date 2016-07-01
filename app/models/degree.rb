# == Schema Information
#
# Table name: degrees
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Degree < ActiveRecord::Base
  has_many :student_informations
end
