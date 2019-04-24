class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :order_date
      t.float :total
      t.float :discount
      t.float :delivery
      t.string :status
      t.integer :brewery_id
      t.integer :user_id

      t.timestamps
    end
  end
end
