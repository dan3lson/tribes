class Group < ApplicationRecord
  belongs_to :tribe

  validates :name, presence: true
end
