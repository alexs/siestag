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

require 'rails_helper'

RSpec.describe Person, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
