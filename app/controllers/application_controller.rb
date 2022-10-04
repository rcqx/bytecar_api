class ApplicationController < ActionController::API
  before_action :authenticated

  def jwt_key
    Rails.application.secret_key_base
  end

  def token
    request.headers['Authorization']
  end

  def jwt_encode(user)
    JWT.encode({ user_id: user.id }, jwt_key)
  end

  def jwt_decoded
    return nil unless token
    begin  
      JWT.decode(token.split[1], jwt_key, true, { algorithm: 'HS256' })
    rescue JWT::DecodeError
      nil
    end
  end

  def current_user
    return nil unless jwt_decoded

    user_id = jwt_decoded[0]['user_id']
    @current_user = User.find_by(id: user_id)
  end

  def authenticated
    render json: { message: 'Please log in' }, status: :unauthorized unless jwt_decoded
  end
end
