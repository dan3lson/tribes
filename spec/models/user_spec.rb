require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:groups_users) }
  it { should have_many(:groups) }
	it { should validate_presence_of(:first_name) }
	it { should validate_presence_of(:last_name) }
	it { should validate_presence_of(:email) }
	it { should validate_presence_of(:dwolla_id) }
end
