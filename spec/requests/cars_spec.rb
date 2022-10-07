# rubocop:disable Metrics/BlockLength
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
      consumes 'application/json'
      produces 'application/json'
      security [bearer: []]
      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          brand: { type: :string },
          model: { type: :string },
          finance_fee: { type: :integer },
          purchase_fee: { type: :integer },
          tap: { type: :integer },
          duration: { type: :integer },
          description: { type: :text }
        },
        required: %w[brand finance_fee model tap duration description]
      }

      response '201', 'Car created' do
        let(:car) do
          {
            brand: 'Tesla',
            finance_fee: 2000,
            model: 'Plaid',
            tap: 40_000,
            duration: 24,
            description: 'a rspec test'
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/cars/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    delete 'Delete Car' do
      tags 'Car'
      consumes 'application/json', 'application/xml'
      security [bearer: []]

      response '201', 'Car deleted' do
        let(:car) do
          {
            id: 1
          }
        end
        run_test!
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
