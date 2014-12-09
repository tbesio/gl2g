class AddDefaultRecurringToPantryItems < ActiveRecord::Migration
  def change
    change_column_default :pantry_items, :recurring, false
  end
end
