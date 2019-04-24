class Api::V1::OrderProductsController < ApplicationController

  def index
    @orderproducts = OrderProduct.all
    render json: @orderproducts
  end

  def show
    @orderproducts = OrderProduct.find(params[:id])
    render json: @orderproducts
  end

end
