class User < ApplicationRecord

  has_secure_password
  validates :username, presence: true, uniqueness: true
  has_many :cards, dependent: :destroy

  accepts_nested_attributes_for :cards 
  
end
