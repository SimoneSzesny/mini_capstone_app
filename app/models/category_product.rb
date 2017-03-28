class CategoryProduct < ApplicationRecord
  belongs_to :chair, optional: true
  belongs_to :category, optional: true
end
