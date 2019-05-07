class ProductSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :abv, :volume, :style, :packaging, :price, :stock, :image_url, :brewery, :reviews, :productRating, :weightedRating, :trending

    def reviews
        self.object.reviews.map do |review|
            {
                id: review.id,
                product_id: review.product_id,
                rating: review.rating,
                comment: review.comment,
                reviewer: review.user.first_name + ' ' + review.user.last_name,
                date: review.date
            }
        end.reverse
    end
end