class Brewery < ApplicationRecord
    has_many :users

    has_many :products
    has_many :orders, through: :products
end
