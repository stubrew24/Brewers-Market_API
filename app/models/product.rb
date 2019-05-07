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

    def weightedRating
        if reviews.length > 0
            c = Product.all.sum(&:productRating).to_f / Product.all.length.to_f
            r = productRating.to_f
            v = reviews.length.to_f
            m = 1.0

            return (v/(v+m)) * r + (m/(v+m)) * c
        else
            return 0
        end
    end
        
    def trending
        return OrderProduct.all.map{|op|op.product_id}.reverse.uniq
    end
end
