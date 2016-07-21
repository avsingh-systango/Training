class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.text :name
      t.string :area
      t.numeric :pin
      t.string :contact
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
