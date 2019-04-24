class CreateBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :name
      t.text :bio
      t.string :location
      t.string :profile_img

      t.timestamps
    end
  end
end
