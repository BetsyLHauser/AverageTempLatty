class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :airport_id
      t.integer :temp_id
    end
  end
end
