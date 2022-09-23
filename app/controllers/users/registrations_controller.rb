class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: {
        status: { code: 200, message: 'Signed up sucessfully.' },
        data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
      }
    else
      render json: {
        status: { message: "User could not sign up. #{resource.errors.full_message.to_sentence}" }
      }, status: :unprocessable_entity
    end
  end
end
