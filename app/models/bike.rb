class Bike < ApplicationRecord
  belongs_to :user
  has_one :order
  has_one_attached :photo
 end
