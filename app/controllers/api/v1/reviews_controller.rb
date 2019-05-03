class Api::V1::ReviewsController < ApplicationController

    def create
        @review = Review.new(create_params)
        if @review.save
            render json: @review
        else 
            render json: {error: 'An error occurred. Please try again or contact site administrator.'}
        end
    end

    private

    def create_params
        params.permit(:user_id, :product_id, :rating, :comment)
    end

end