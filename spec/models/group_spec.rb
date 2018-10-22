require 'rails_helper'

RSpec.describe Group, type: :model do
  it { should belong_to(:tribe) }
  it { should have_many(:groups_users) }
  it { should have_many(:users) }
	it { should validate_presence_of(:name) }

  describe "#has_users?" do
    it "returns true" do
      group = FactoryBot.create(:groups_user).group

      expect(group).to be_has_users
    end

    it "returns false" do
      group = FactoryBot.create(:group)

      expect(group).not_to be_has_users
    end
  end

  describe "#is_full?" do
    it "returns true, for 99 users" do
      group = FactoryBot.create(:group)

      99.times do
        FactoryBot.create(:groups_user, group: group)
      end

      expect(group).to be_is_full
    end

    it "returns false, for 98 users" do
      group = FactoryBot.create(:group)

      98.times do
        FactoryBot.create(:groups_user, group: group)
      end

      expect(group).not_to be_is_full
    end
  end

  describe "#num_users" do
    it "returns the integer 99" do
      group = FactoryBot.create(:group)

      99.times do
        FactoryBot.create(:groups_user, group: group)
      end

      expect(group.num_users).to eq(99)
    end

    it "returns the integer 1" do
      group = FactoryBot.create(:groups_user).group

      expect(group.num_users).to eq(1)
    end
  end

  describe "#amt_invested" do
    it "returns an integer" do
      group = FactoryBot.create(:groups_user).group

      expect(group.amt_invested).to eq(112)
    end
  end
end
