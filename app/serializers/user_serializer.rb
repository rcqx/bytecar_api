class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :password, :created_at
end
