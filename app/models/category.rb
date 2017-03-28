class Category < ApplicationRecord
  has_many :category_products
  has_many :chairs, through: :category_products
end
