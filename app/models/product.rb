class Product < ApplicationRecord
    belongs_to :brewery

    has_many :reviews
    has_many :order_products
    has_many :orders, :through => :order_products

    def productRating
        if reviews.length > 0
            reviews.map{|review| review.rating}.sum / reviews.length
        else 
            0
        end
    end
end
