require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:groups_users) }
  it { should have_many(:groups) }
	it { should validate_presence_of(:first_name) }
end
