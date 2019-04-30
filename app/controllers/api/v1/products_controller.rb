class Api::V1::ProductsController < ApplicationController

  def index
    @products = Product.all
    render json: @products
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  # def update_stock
  #   @items = params['cart']

  #   @items.each do |item| 
  #     product = Product.find(item[0].to_i)
  #     if product.stock < item[1] 
  #       @error = 'An error occured. Not enough stock available.'
  #     elsif !product.update(stock: product.stock - item[1])
  #       @error = 'An error occured, please try again or contact site administrator.'
  #     end
  #   end

  #   if @error
  #     render json: {error: @error, status: 400}
  #   else
  #     render json: {success: 'Success'}
  #   end

  # end

end
