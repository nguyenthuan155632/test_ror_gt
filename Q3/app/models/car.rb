class Car < ApplicationRecord
  validates :maker, presence: true
  validates :model, presence: true
  validates :year, format: { with: /\A\d{4}\z/, allow_nil: true }
  validates :price, presence: true, numericality: { greater_than: 1000, less_than: 10000000, allow_nil: true }
end
  