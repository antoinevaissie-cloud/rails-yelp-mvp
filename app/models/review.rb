class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0,
    less_than_or_equal_to: 5 }
  validates :rating, numericality: { only_integer: true,
    message: "Rating must be an integer" }
end