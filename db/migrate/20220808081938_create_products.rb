class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :cuisine
      t.integer :price
      t.string :description
      t.string :ingredients

      t.timestamps
    end
  end
end
