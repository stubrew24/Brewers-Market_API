class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def signin 
    @user = User.find_by(email: signin_params[:email])
    if (@user && @user.password_digest === signin_params[:password])
      render json: @user
    else
      render json: {error: 'Incorrect Credentials', status: 400}
    end
  end

  private

  def signin_params
    params.permit(:email, :password)
  end

end
