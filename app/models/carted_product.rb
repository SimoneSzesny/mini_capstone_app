class CartedProduct < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :chair, optional:true
  belongs_to :order, optional:true
  

end
