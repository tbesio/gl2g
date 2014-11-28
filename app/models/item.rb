class Item < ActiveRecord::Base

  belongs_to :category

  has_many :pantry_items

  validates :name, :uniqueness => { :scope => :description }, :presence => true
  validates :description, :presence => true
  # validates :upc, :uniqueness => true

end
