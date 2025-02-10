class Category < ApplicationRecord
  has_many :expenses
  validates :title, presence: true
  validates :color, presence: true, inclusion: { in: [ "#FF5733", "#33FF57", "#3357FF", "#FF33A1", "#F4C542", "#9B59B6" ], message: "must be one of the predefined colors" }
end
