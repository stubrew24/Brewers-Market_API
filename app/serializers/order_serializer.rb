class OrderSerializer < ActiveModel::Serializer
    attributes :id, :total, :delivery, :status, :created_at, :products, :user
    def products
        self.object.products.map do |product|
            qty = self.object.order_products.find_by(product_id: product.id).qty
            {
                id: product.id,
                name: product.name,
                price: product.price,
                image_url: product.image_url,
                brewery_id: product.brewery.id,
                brewery_name: product.brewery.name,
                qty: qty
            }
        end
    end
end