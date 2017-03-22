class Chair < ApplicationRecord
  belongs_to :supplier
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
