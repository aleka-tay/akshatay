class Category < ApplicationRecord
  PREDEFINED_COLORS = {
    "Red" => "#FF5733",
    "Blue" => "#3498db",
    "Green" => "#2ecc71",
    "Yellow" => "#f1c40f",
    "Purple" => "#9b59b6",
    "Orange" => "#e67e22"
  }.freeze
  has_many :expense
  belongs_to :user

  validates :title, presence: true
  validates :color, presence: true, inclusion: { in: PREDEFINED_COLORS.values }

  def color_name
    PREDEFINED_COLORS.key(color) || color
  end
end
