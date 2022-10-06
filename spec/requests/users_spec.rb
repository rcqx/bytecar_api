require 'swagger_helper'

describe 'Users API' do
  path '/api/v1/users' do
    post 'Create a User' do
      tags 'Users'
      consumes 'application/json', 'application/xml'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string },
        },
        required: %w[username]
      }
    
      response '201', 'User created' do
        let(:user) do
          {
            username: 'test'
          }
        end
        run_test!
      end

      response '400', 'Invalid request' do
        let(:user) do
          {
            username: ''
          }
        end
        run_test!
      end
    end
  end   
end