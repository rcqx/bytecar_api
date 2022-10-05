require 'swagger_helper'

describe 'Cars API' do
  path '/api/v1/cars' do
    get 'Retrieves Cars' do
      tags 'Cars'
      produces 'application/json'
      parameter name: :page, in: :query, type: :integer
      parameter name: :per_page, in: :query, type: :integer

      response '200', 'Cars retrieved' do
        let(:page) { 1 }
        let(:per_page) { 10 }
        run_test!
      end
    end

    post 'Create a Car' do
      tags 'Cars'
      consumes 'application/json', 'application/xml'
      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          brand: { type: :string },
          model: { type: :string },
          finance_fee: { type: :integer },
          purchase_fee: { type: :integer },
          tap: { type: :integer },
          duration: { type: :integer },
          description: { type: :text },
          image: { type: :blob} 
        },
        required: ['brand', 'finance_fee', 'model', 'image', 'tap', 'duration', 'description']
      }

      response '201', 'Car created' do
        # let(:user) { { "user":"John","token":"eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyfQ.sgpha5VGkHgndahWpvO_TEYlz02BYhA_BhWDCyawFUQ" }} 
        let(:car) { 
          { 
            brand: 'Tesla', 
            finance_fee: 2000,
            model: 'Plaid', 
            image: 'an image',
            tap: 40000,
            duration: 24,
            description: 'a rspec test' 
          }
        }
        run_test!
      end
    end
  end
end
