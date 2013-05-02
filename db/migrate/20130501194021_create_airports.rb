class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :abbrev
      t.string :city
    end
  end
end
