require 'rails_helper'

RSpec.describe User, type: :model do
  it { should belong_to(:group) }
	it { should validate_presence_of(:first_name) }
end
