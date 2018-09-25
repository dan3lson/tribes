class GroupsUser < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :amt_invested, presence: true
  validates :group, presence: true
  validates :user, presence: true, uniqueness: { scope: [:group_id] }
end
