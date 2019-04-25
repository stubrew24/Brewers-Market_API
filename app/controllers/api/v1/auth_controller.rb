class Api::V1::AuthController < ApplicationController
  def signin
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])

      token = encode_token(@user.id)

      render json: {user: UserSerializer.new(@user), token: token}
    else
      render json: {error: "Credentials not found", status: 404}
    end
  end

  def auto_signin
    if session_user
      render json: {user: UserSerializer.new(session_user)}
    else
      render json: {error: "Credentials not found", status: 404}
    end
  end
end
