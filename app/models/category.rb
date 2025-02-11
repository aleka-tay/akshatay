class Category < ApplicationRecord
  PREDEFINED_COLORS = {
    "red" => "#FF5733",
    "blue" => "#3498db",
    "green" => "#2ecc71",
    "yellow" => "#f1c40f",
    "purple" => "#9b59b6",
    "orange" => "#e67e22"
  }.freeze
  has_many :expense, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :color, presence: true, inclusion: { in: PREDEFINED_COLORS.values }

  def color_name
    PREDEFINED_COLORS.key(color) || color
  end
end
