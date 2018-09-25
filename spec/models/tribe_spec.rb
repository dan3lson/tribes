require 'rails_helper'

RSpec.describe Tribe, type: :model do
	it { should have_many(:groups) }
	it { should validate_presence_of(:name) }
end
