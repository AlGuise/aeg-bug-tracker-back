class Project < ApplicationRecord
  belongs_to :team
  has_many :tickets
  has_many :users, through: :tickets
end
