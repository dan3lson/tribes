FactoryBot.define do
  factory :tribe do
    name { "Foobar Tribe" }
  end

  factory :group do
    name { "Foo Foo" }
    
    tribe
  end
end
