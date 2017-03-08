class CreateChairs < ActiveRecord::Migration[5.0]
  def change
    create_table :chairs do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
