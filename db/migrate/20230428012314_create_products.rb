class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :collection_name
      t.string :sku
      t.string :title
      t.string :technique
      t.integer :height
      t.integer :width
      t.string :year
      t.string :edition
      t.integer :price

      t.timestamps
    end
  end
end
