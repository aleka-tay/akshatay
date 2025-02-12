class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :category,  optional: true

  before_validation :set_default_category, on: :create

  private

  def set_default_category
    self.category ||= Category.find_by(title: "Miscellaneous") do |category|
      category.color ||= "#CCCCCC"
    end
  end
end
