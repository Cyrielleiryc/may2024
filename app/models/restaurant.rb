class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :rating, numericality: { only_integer: true, in: 1..5 }
end
