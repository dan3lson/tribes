class User < ApplicationRecord
  has_many :groups_users
  has_many :groups, through: :groups_users

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :dwolla_id, presence: true
end
