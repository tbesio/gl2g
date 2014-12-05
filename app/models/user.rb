class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pantry_items
  has_many :items, :through => :pantry_items

  validates :email, :presence => :true, :uniqueness => :true

end
