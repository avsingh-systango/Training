class CreateHitcounts < ActiveRecord::Migration[5.0]
  def change
    create_table :hitcounts do |t|
      t.integer :user_id
      t.integer :hitable_id
      t.string :hitable_type

      t.timestamps
    end
  end
end
