module CategoriesHelper
  def colors_by_type(category)
    colors={ pink: "--bs-danger-bg-subtle", green: "--bs-success-bg-subtle" }

    if category&color.present?
      colors[category.color.to_sym]
    else
      "--bs-secondary-bg"
    end
  end
end
