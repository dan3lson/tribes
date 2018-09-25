class User < ApplicationRecord
  belongs_to :group

  validates :first_name, presence: true
end
