class ProjectSerializer < ActiveModel::Serializer
  attributes :name, :deadline, :created_by, :tickets
  has_one :team
end
