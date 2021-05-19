class User < ApplicationRecord

  has_secure_password
  validates :username, presence: true, uniqueness: true
  has_many :cards

  accepts_nested_attributes_for :cards 
  
end
