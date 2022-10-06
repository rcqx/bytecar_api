require 'swagger_helper'
# rubocop:disable Metrics/BlockLength
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

    # post 'Create a Car' do
    #   tags 'Cars'
    #   consumes 'application/json', 'application/xml'
    #   parameter name: :car, in: :body, schema: {
    #     type: :object,
    #     properties: {
    #       brand: { type: :string },
    #       model: { type: :string },
    #       finance_fee: { type: :integer },
    #       purchase_fee: { type: :integer },
    #       tap: { type: :integer },
    #       duration: { type: :integer },
    #       description: { type: :text },
    #       image: { type: :blob }
    #     },
    #     required: %w[brand finance_fee model image tap duration description]
    #   }

    #   response '201', 'Car created' do
    #     let(:car) do
    #       {
    #         brand: 'Tesla',
    #         finance_fee: 2000,
    #         model: 'Plaid',
    #         image: 'an image',
    #         tap: 40_000,
    #         duration: 24,
    #         description: 'a rspec test'
    #       }
    #     end
    #     run_test!
    #   end
    # end

    # path '/api/v1/cars/:id' do
    #   delete 'Delete Car' do
    #     tags 'Car'
    #     consumes 'application/json', 'application/xml'
    #     parameter name: :car, in: :body, schema: {
    #       type: :object,
    #       properties: {
    #         id: { type: :integer }
    #       },
    #       required: ['id']
    #     }

    #     response '201', 'Car deleted' do
    #       let(:car) do
    #         {
    #           id: 3
    #         }
    #       end
    #       run_test!
    #     end
    #   end
    # end
  end
end
# rubocop:enable Metrics/BlockLength
