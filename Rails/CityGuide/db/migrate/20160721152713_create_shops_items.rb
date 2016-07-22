class CreateShopsItems < ActiveRecord::Migration[5.0]
  def change
    create_table :shops_items do |t|
      t.integer :shop_id
      t.integer :item_id
    end
  end
end
