class Ticket < ApplicationRecord
  belongs_to :project, dependent: :destroy
  belongs_to :user
end
