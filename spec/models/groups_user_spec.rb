require 'rails_helper'

RSpec.describe GroupsUser, type: :model do
  it { should belong_to(:group) }
  it { should belong_to(:user) }
	it { should validate_presence_of(:amt_invested) }
	it { should validate_presence_of(:group) }
	it { should validate_presence_of(:user) }
  subject { FactoryBot.create(:groups_user) }
  it { should validate_uniqueness_of(:user).scoped_to(:group_id) }
end
