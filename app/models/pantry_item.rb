class PantryItem < ActiveRecord::Base

  belongs_to :item
  belongs_to :user

  validates :user_id, :presence => true
  validates :item_id, :presence => true
  validates :purchase_date, :presence => true
  validates :consumption_speed, :presence => true
  validates :recurring, :presence => true

end
