class Item < ActiveRecord::Base

  belongs_to :category

  has_many :pantry_items

end
