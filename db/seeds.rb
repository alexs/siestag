# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

Country.delete_all
Country.reset_pk_sequence
Degree.delete_all
Degree.reset_pk_sequence

puts "Loading countries catalog ..."
CSV.foreach("#{Rails.root}/db/catalogs/countries.csv", :col_sep =>",") do |row|
  p row[2]
  i = Country.create!(id: row[0], name: row[1], citizen: row[2], code: row[3])
end

Degree.create([{ name: 'Licenciatura'}, {name: 'Maestría'},{name: 'Doctorado'}])

ActivityType.create([{ name: 'Tesis'}, {name: 'Tesina'},{name: 'Practicas profesionales'},{name: 'Servicio Social'}, {name: 'Otro'}])
