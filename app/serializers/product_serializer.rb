class ProductSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :abv, :volume, :style, :packaging, :price, :stock, :image_url, :brewery
end