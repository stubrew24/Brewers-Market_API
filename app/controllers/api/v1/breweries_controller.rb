class Api::V1::BreweriesController < ApplicationController

  def index
    @breweries = Brewery.all
    render json: @breweries
  end

  def show
    @brewery = Brewery.find(params[:id])
    render json: @brewery
  end

  def update 
    @brewery = Brewery.find(params[:id])
    if @brewery.update(brewery_params)
      render json: @brewery
    else
      render json: {error: 'An error occurred. Please try again or contact site administrator.', status: 400}
    end
  end

  private 

  def brewery_params
    params.permit(:id, :name, :bio, :location, :profile_img)
  end
  
end
