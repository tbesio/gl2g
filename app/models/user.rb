class User < ActiveRecord::Base

  has_many :pantry_items
  has_many :items, :through => :pantry_items

  validates :email, :presence => :true,

end
