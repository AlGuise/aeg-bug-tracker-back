class TicketSerializer < ActiveModel::Serializer
  attributes :id, :description, :priority, :cat, :status, :project_id, :submitted_by
end
