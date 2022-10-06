require 'swagger_helper'

describe 'Reservations API' do

  path '/api/v1/users/{user_username}/reservations' do
    parameter name: 'user_username', in: :path, type: :string, description: 'user_username'
    get 'Create a Reservation' do
      tags 'Reservations'
      security [Bearer: []]
      consumes 'application/json', 'application/xml'
      # parameter name: :reservation, in: :body, schema: {
      #   type: :object,
      #   properties: {
      #     date: { type: :date },
      #     city: { type: :string },
      #     car_id: { type: :bigint },
      #   },
      #   required: %w[date city car_id]
      # }
      response '200', 'Reservation retrieved' do
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

end  
#   path '/api/v1/:user_username/reservations/:id' do
#     delete 'Delete Reservation' do
#       tags 'Reservation'
#       consumes 'application/json', 'application/xml'
#       parameter name: :reservation, in: :body, schema: {
#         type: :object,
#         properties: {
#           id: { type: :integer }
#         },
#         required: ['id']
#       }

#       response '201', 'Reservation deleted' do
#         let(:reservation) do
#           {
#             id: 3
#           }
#         end
#         run_test!
#       end
#     end
#   end
# end
