class CreatePantryItems < ActiveRecord::Migration
  def change
    create_table :pantry_items do |t|
      t.integer :user_id
      t.integer :item_id
      t.date :expiration_date
      t.date :purchase_date
      t.integer :consumption_speed
      t.boolean :recurring

      t.timestamps

    end
  end
end
