class Bike < ApplicationRecord
  belongs_to :user
  belongs_to :order
  belongs_to :question
end
