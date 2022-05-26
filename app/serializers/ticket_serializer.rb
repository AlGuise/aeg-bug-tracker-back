class TicketSerializer < ActiveModel::Serializer
  attributes :description, :priority, :cat, :status
end
