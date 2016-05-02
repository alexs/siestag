class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :middlename
      t.string :lastname
      t.integer :birthplace
      t.integer :nationality
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
