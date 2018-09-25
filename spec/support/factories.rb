FactoryBot.define do
  factory :tribe do
    name { "Foobar Tribe" }
  end

  factory :group do
    name { "Foo Foo" }

    tribe
  end

  factory :user do
    first_name { "John Doe" }

    group
  end
end
