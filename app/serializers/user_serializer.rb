class UserSerializer
  include JSONAPI::Serializer
  has_many :reservations

  attributes :id, :username
end
