class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :product_link, :brewery, :likes, :comments, :post_images, :created_at
end