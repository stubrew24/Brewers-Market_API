class Api::V1::UserBreweriesController < ApplicationController

    def create
        @UserBrewery = UserBrewery.find_by(user_id: params[:user_id], brewery_id: params[:brewery_id])
        if @UserBrewery
            @UserBrewery.destroy
            render json: {status: 'unfollowed'}
        else
            UserBrewery.create(user_id: params[:user_id], brewery_id: params[:brewery_id])
            render json: {status: 'followed'}
        end
    end
  
end