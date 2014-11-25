# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories_seed = [
  { :name => "Baby Items", :perishable => false },
  { :name => "Baking", :perishable => false },
  { :name => "Beverages", :perishable => false },
  { :name => "Bread and Bakery", :perishable => true },
  { :name => "Canned Goods - Vegetables", :perishable => false },
  { :name => "Canned Goods - Soups", :perishable => false },
  { :name => "Canned Goods - Sauces", :perishable => false },
  { :name => "Canned Goods - Other", :perishable => false },
  { :name => "Cereal and Breakfast", :perishable => false },
  { :name => "Condiments", :perishable => true },
  { :name => "Dairy", :perishable => true },
  { :name => "Deli", :perishable => true },
  { :name => "Frozen Foods", :perishable => false },
  { :name => "Meat", :perishable => true },
  { :name => "Fish and Seafood", :perishable => true },
  { :name => "Miscellaneous", :perishable => false },
  { :name => "Paper Products", :perishable => false },
  { :name => "Cleaning Supplies", :perishable => false },
  { :name => "Health and Beauty", :perishable => false },
  { :name => "Pet Food", :perishable => true },
  { :name => "Pasta and Rice", :perishable => false },
  { :name => "Produce", :perishable => true },
  { :name => "Snacks", :perishable => false },
  { :name => "Spices", :perishable => true }
]

categories_seed.each do |category_seed|
  category = Category.new
  category.name = category_seed[:name]
  category.perishable = category_seed[:perishable]
  category.save
end
