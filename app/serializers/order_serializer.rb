class OrderSerializer < ActiveModel::Serializer
    attributes :id, :total, :delivery, :status, :user_id, :created_at, :products
end