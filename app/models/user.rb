class User < ApplicationRecord
  has_secure_password
  has_one :role
  has_many :tickets
  has_many :projects, through: :tickets
  has_many :user_teams
  has_many :teams, through: :user_teams
  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
end
