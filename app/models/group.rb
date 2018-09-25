class Group < ApplicationRecord
  belongs_to :tribe
  has_many :users

  validates :name, presence: true
end
