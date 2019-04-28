class BrewerySerializer < ActiveModel::Serializer
    attributes :id, :name, :bio, :location, :profile_img, :products
end
