class Product < ApplicationRecord
    belongs_to :brewery
    belongs_to :order_products
end
