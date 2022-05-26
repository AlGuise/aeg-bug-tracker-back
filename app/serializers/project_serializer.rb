class ProjectSerializer < ActiveModel::Serializer
  attributes :name, :deadline, :tickets
end
