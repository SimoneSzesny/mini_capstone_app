class ChangeProductsToChairs < ActiveRecord::Migration[5.0]
  def change
    rename_column :carted_products, :product_id, :chair_id
  end
end
