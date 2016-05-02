class CreateStudentInformations < ActiveRecord::Migration
  def change
    create_table :student_informations do |t|
      t.integer :institution_id
      t.integer :degree_id
      t.integer :tutor_id
      t.boolean :schoolarship
      t.integer :activity_type_id
      t.text :activity_other
      t.integer :startmonth
      t.integer :startyear
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
