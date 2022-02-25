class Bike < ApplicationRecord
  belongs_to :user
  has_one :order
  has_many_attached :photos
  CATEGORY = %w[Road\ Bike Mountain\ Bike City\ Bike Folding\ Bike Fixed\ Gear\ Bike BMX Recumbent\ Bike Cruiser\ Bike Hybrid\ Bike Cyclocross\ Bike Electric\ Bike]
  WHEEL_SIZE = %w[12 14 16 18 20 22 24 26 27 28 29 30]

  include PgSearch::Model
  pg_search_scope :search_by_bike,
    against: [ :brand, :model, :details, :category, :wheel_size ],
    using: {
      tsearch: { prefix: true } 
    }

 end
