class Review < ApplicationRecord
    belongs_to :user
    belongs_to :product

    validates :user_id, uniqueness: {scope: :product_id}


    def date
        return created_at.strftime("%d-%m-%Y")
    end
end
