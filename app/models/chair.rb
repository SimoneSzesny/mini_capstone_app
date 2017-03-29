class Chair < ApplicationRecord
  has_many :images
  belongs_to :supplier
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products
  

  def sale_message
    if price.to_f < 10
      return "Sale Item!"
    else
      return "Everyday Value!"
     end
   end

  def tax
    price.to_f * 0.09
  end

  def total
    return price.to_f + tax
  
  end
end
