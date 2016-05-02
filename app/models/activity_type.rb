# == Schema Information
#
# Table name: activity_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ActivityType < ActiveRecord::Base
end
