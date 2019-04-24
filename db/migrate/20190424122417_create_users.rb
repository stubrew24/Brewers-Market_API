class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :dob
      t.string :tel
      t.string :profile_img
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :postcode

      t.timestamps
    end
  end
end
