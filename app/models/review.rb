class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true

  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 5,
    message: 'must be a whole number between 0 and 5'
  }
end
