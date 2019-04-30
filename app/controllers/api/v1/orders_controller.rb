class Api::V1::OrdersController < ApplicationController

  def index
    @orders = Order.all
    render json: @orders
  end

  def show
    @orders = Order.find(params[:id])
    render json: @orders
  end

  def create
    @user = User.find(params[:user_id])
    @order = Order.create(user_id: params[:user_id], total: params[:order_total], delivery: 6.99, status: 'open')
    
    @items = params['cart']
    @items.each do |item| 
      product = Product.find(item[0].to_i)
      if OrderProduct.create(product_id: item[0], order_id: @order.id, qty: item[1])
        if product.stock < item[1] 
          @error = 'An error occured. Not enough stock available.'
        elsif !product.update(stock: product.stock - item[1])
          @error = 'An error occured. Please try again or contact site administrator.'
        end
      else 
        @error = 'An error occured. Order not saved.'
      end
    end

    if @error
      render json: {error: @error, status: 400}
    else
      render json: OrderSerializer.new(@order)
    end
  end


  # t.string "order_date"
  # t.float "total"
  # t.float "discount"
  # t.float "delivery"
  # t.string "status"
  # t.integer "brewery_id"
  # t.integer "user_id"

end
