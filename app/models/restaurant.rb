class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :phone_number, :address, :name, presence: true
  validates :category, presence: true, inclusion: { in: %w(french japanese belgian chinese italian)}
end

