class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :abv
      t.float :volume
      t.string :style
      t.string :packaging
      t.float :price
      t.integer :stock
      t.string :image_url
      t.integer :brewery_id

      t.timestamps
    end
  end
end
