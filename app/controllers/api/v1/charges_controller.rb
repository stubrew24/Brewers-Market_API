class Api::V1::ChargesController < ApplicationController
    rescue_from Stripe::CardError, with: :catch_exception
    def new
    end
  
    def create
        customer = Stripe::Customer.create(email: params[:email], card: params[:card_token])

        total = params[:total].to_i

        Stripe::Charge.create(customer: customer.id, amount: total, description: "Brewers Market Order ##{params[:order_id]}", currency: 'GBP')
    end
  
    private
  
    def catch_exception(exception)
      flash[:error] = exception.message
    end
  end