class RemoveOrderDateDiscountFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :order_date, :string
    remove_column :orders, :discount, :float
  end
end
