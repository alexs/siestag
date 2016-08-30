class CreateStudentInformations < ActiveRecord::Migration
  def change
    create_table :student_informations do |t|
      t.string :institution_name
      t.integer :degree_id
      t.integer :tutor_id
      t.integer :schoolarship
      t.integer :activity_type_id
      t.text :activity_other
      t.integer :worktype_related_id
      t.integer :startmonth
      t.integer :startyear
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
