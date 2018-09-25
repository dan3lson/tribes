require 'rails_helper'

RSpec.describe Group, type: :model do
  it { should belong_to(:tribe) }
	it { should validate_presence_of(:name) }
end
