class Order < ApplicationRecord
  belongs_to :chair, optional: true
  belongs_to :user, optional: true
end
