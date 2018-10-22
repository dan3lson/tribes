FactoryBot.define do
  factory :tribe do
    name { "Foobar Tribe" }
  end

  factory :group do
    name { "Foo Foo" }

    tribe
  end

  factory :user do
    first_name { "John" }
    last_name { "Doe" }
    email { "john@doe.com" }
    dwolla_id { "foo1foo2foo3foo4" }
  end

  factory :groups_user do
    amt_invested { 112 }

    group
    user
  end
end
