class User < ApplicationRecord
    belongs_to :brewery
    has_many :orders
    has_many :reviews
    has_many :order_products, through: :orders
    has_many :products, :through => :order_products

    has_secure_password
    
    validates :email, uniqueness: true
end
