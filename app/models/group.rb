class Group < ApplicationRecord
  belongs_to :tribe
  has_many :groups_users, dependent: :destroy
  has_many :users, through: :groups_users

  validates :name, presence: true

  def has_users?
    users.present?
  end

  def is_full?
    num_users > 98
  end

  def num_users
    users.count
  end

  def amt_invested
    GroupsUser.where(group: self).sum(:amt_invested)
  end
end
