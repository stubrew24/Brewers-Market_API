class CreatePost < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :product_link
      t.integer :brewery_id
      t.timestamps
    end
  end
end
