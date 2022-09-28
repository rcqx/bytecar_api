class ApplicationController < ActionController::API
  # before_action :authenticated

  def jwt_key
    Rails.application.secret_key_base
  end

  def jwt_encode(user)
    JWT.encode({ user_id: user.id }, jwt_key)
  end

  def jwt_decoded
    JWT.decode(token, jwt_key, true, { algorithm: 'HS256' })
  rescue JWT::DecodeError
    nil
  end

  def token
    request.headers['Authorization']
  end

  def user_id
    jwt_decoded.first['user_id']
  end

  def current_user
    @current_user ||= User.find_by(id: user_id)
  end

  def authenticated
    render json: { message: 'Please log in' }, status: :unauthorized unless decoded_token
  end
end
