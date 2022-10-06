require 'swagger_helper'

describe 'Reservations API' do
  
  path '/api/v1/reservations' do
    get 'Retrieves Reservations' do
      tags 'Reservations'
      produces 'application/json'
      parameter name: :page, in: :query, type: :integer
      parameter name: :per_page, in: :query, type: :integer

      response '200', 'Reservations retrieved' do
        let(:page) { 1 }
        let(:per_page) { 10 }
        run_test!
      end
    end
  end


  path '/api/v1/users/{user_username}/reservations' do
    parameter name: 'user_username', in: :path, type: :string, description: 'user_username'
    post 'Create a Reservation' do
      tags 'Reservations'
      security [Bearer: []]
      consumes 'application/json', 'application/xml'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          date: { type: :date },
          city: { type: :string },
          car_id: { type: :bigint },
        },
        required: %w[date city car_id]
      }
      response '201', 'Reservation created' do
        let(:reservation) do
          {
            date: '2020-05-06',
            city: 'London',
            car_id: 1,
            user_id: 3
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/users/{user_username}/reservations/{id}' do
    parameter name: 'username', in: :path, type: :string, description: 'username' 
    parameter name: 'id', in: :path, type: :string, description: 'id' 

    delete 'Delete Reservation' do
      tags 'Reservation'
      consumes 'application/json', 'application/xml'
      security [Bearer: []]
      response '201', 'Reservation deleted' do
        let(:reservation) do
          {
            id: 20
          }
        end
        run_test!
      end
    end
  end
end
