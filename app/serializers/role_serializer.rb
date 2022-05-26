class RoleSerializer < ActiveModel::Serializer
  attributes :role_title
  has_one :user
end
