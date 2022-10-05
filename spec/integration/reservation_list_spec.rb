require 'swagger_helper'

describe 'Reservations API' do
  path '/api/v1/reservations' do
    get 'Retrieves Reservations' do
      tags 'Reservations'
      produces 'application/json'
      parameter name: :page, in: :query, type: :integer
      parameter name: :per_page, in: :query, type: :integer

      response '200', 'Reservations retrieved' do
        # let(:user) { { "user":"John","token":"eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyfQ.sgpha5VGkHgndahWpvO_TEYlz02BYhA_BhWDCyawFUQ" }} 
        let(:page) { 1 }
        let(:per_page) { 10 }
        run_test!
      end
    end
  end
end