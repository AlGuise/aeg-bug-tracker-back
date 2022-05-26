class Team < ApplicationRecord
  has_many :projects
  has_many :user_teams
  has_many :users, through: :user_teams
end
