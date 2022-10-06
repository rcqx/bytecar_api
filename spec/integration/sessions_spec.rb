require 'swagger_helper'

describe 'Users sessions API' do
  path '/api/v1/sessions' do
    post 'Create a user session' do
      tags 'User session'
      consumes 'application/json', 'application/xml'
      parameter name: :username, in: :body, schema: {
        type: :object,
        properties: {
            username: { type: :string }
          },
          required: %w[username]
        }

      response '201', 'User session created' do
        schema type: :object,
          properties: {
            username: { type: :string },
            token: { type: :string }
          },
          required: %w[username token]
        let(:username) do
          {
            username: 'Hector'
          }
        run_test!
        end
      end

      response '404', 'invalid request' do
        let(:username) { { username: '' } }
        run_test!
      end
    end
  end
end