class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name
  has_one :role
  has_many :teams
end
