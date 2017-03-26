class ChangeProductidToChairid < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :product_id, :chair_id
  end
end
