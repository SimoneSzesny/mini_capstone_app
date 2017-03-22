class DeleteImageAttribute < ActiveRecord::Migration[5.0]
  def change
    remove_column :chairs, :image, :string
  end
end
