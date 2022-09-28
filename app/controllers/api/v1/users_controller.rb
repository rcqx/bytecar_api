class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticated

  def create
    @user = User.create(user_params)
    if @user.valid?
      token = jwt_encode(@user)
      render json: { user: @user.username, token: }, status: :created
    else
      render json: @user.errors.full_messages, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
