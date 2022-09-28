class Api::V1::SessionsController < ApplicationController
  skip_before_action :authenticated

  def create
    @user = User.find_by(username: user_params[:username])

    if @user
      log_out
      token = jwt_encode(@user)
      render json: { user: @user.username, token: }, status: :ok
    else
      render json: { error: 'Incorrect user' }, status: :not_found
    end
  end

  def log_out
    reset_session
    @current_user = nil
  end

  private

  def user_params
    params.permit(:username)
  end
end
