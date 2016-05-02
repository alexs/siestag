class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :citizen
      t.column :code, "char(12)"

      t.timestamps null: false
    end
  end
end
