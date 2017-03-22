class AddSupplier < ActiveRecord::Migration[5.0]
  def change
    add_column :chairs, :supplier_id, :integer
  end
end
