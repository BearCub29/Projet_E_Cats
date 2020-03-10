class Cart < ApplicationRecord
  belongs_to :user
  has_many :join_item_carts
  has_many :items, through: :join_item_carts
end
