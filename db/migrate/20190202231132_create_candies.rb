class CreateCandies < ActiveRecord::Migration[5.2]
  def change
    create_table :candies do |t|
      t.integer "shop_id"
      t.integer "shelf_id"
      t.string "name"
      t.boolean "shelved", :default => false
      t.timestamps
    end
  end
end
