class CreateCanvas < ActiveRecord::Migration[7.0]
  def change
    create_table :canvas do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :code
      t.integer :status, default: 0
      t.integer :display, default: 0
      t.string :collection_name
      t.string :title
      t.string :technique
      t.integer :height
      t.integer :width
      t.string :year
      t.string :frame
      t.integer :price

      t.timestamps
    end
  end
end
