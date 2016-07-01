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
require 'salva'
class Student < ActiveRecord::Base
  belongs_to :user
  has_one :student_information
  belongs_to :country, class_name: 'Country', foreign_key: 'birthplace'
  belongs_to :country, class_name: 'Country', foreign_key: 'nationality'
  accepts_nested_attributes_for :student_information

  validates :name, :middlename, :lastname, :birthplace, :nationality, :user_id, presence: true

  def fullname
    name + " " + middlename + " " + lastname
  end

  def self.people_from_salva
		Salva.find_by_adscription_and_category("all","all")
	end
end
