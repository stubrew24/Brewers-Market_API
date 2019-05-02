class Api::V1::ProductsController < ApplicationController

  def index
    @products = Product.all
    render json: @products
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update(update_params)
      render json: @product
    else 
      render json: {error: 'An error occurred. Please try again or contact the site administrator.'}
    end
  end

  private

  def update_params
    params.permit(:id, :name, :description, :abv, :volume, :style, :packaging, :price, :stock, :image_url)
  end

end
