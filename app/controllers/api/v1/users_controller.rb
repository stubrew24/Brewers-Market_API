class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @newuser = User.new(first_name: signup_params[:first_name],last_name: signup_params[:last_name],email: signup_params[:email],dob: signup_params[:dob],password: signup_params[:password])
    if @newuser.save
      token = encode_token(@newuser.id)
      render json: {user: @newuser, token: token}
    else
      render json: {error: @newuser.errors.full_messages, status: 400}
    end
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

  def signup_params
    params.permit(:first_name, :last_name, :email, :password, :dob)
  end

  def signin_params
    params.permit(:email, :password)
  end

end
