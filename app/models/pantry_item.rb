class PantryItem < ActiveRecord::Base

  belongs_to :item
  belongs_to :user

  validates :user_id, :presence => true
  validates :item_id, :presence => true
  validates :purchase_date, :presence => true
  validates :consumption_speed, :presence => true
  validates :recurring, inclusion: { in: [true, false] }

  def expired
    if self.item.category.perishable?
      return true if self.expiration_date < Date.today
      false
    else
      return false
    end
  end
end
