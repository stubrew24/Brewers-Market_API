class Post < ApplicationRecord
    belongs_to :brewery

    has_many :likes
    has_many :comments
    has_many :post_images
    
end
