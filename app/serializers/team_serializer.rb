class TeamSerializer < ActiveModel::Serializer
  attributes :name
  has_many :users
  has_many :projects
end
