class Question < ApplicationRecord
  belongs_to :bike
  belongs_to :user
end
