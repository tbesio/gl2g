class PantryItem < ActiveRecord::Base

  belongs_to :item
  belongs_to :user

  validates :user_id, :presence => true
  validates :item_id, :presence => true
  validates :purchase_date, :presence => true
  validates :consumption_speed, :presence => true
  validates :recurring, inclusion: { in: [true, false] }

  def need_to_replace
    if self.purchase_date + self.consumption_speed <= Date.today
      true
    else
      return true if self.item.category.perishable? && (self.expiration_date <= Date.today)
      false
    end
  end
end
