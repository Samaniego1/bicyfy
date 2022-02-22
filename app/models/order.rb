class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  belongs_to :review
  belongs_to :shopping_cart
end
