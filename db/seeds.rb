#
# DB methods
#

def create_user(sequence)
  User.create!(
    first_name: Faker::DragonBall.character,
    last_name: Faker::FunnyName.name,
    email: Faker::Internet.email,
    dwolla_id: "f59c5e08-c774-45b3-b240-be36777283c#{sequence}"
  )
end

def create_tribes(num_of_tribes)
  num_of_tribes.times { Tribe.create!(name: Faker::Company.industry) }
end

def join_group(user, group)
  rand_num = rand(2..4)
  user.groups_users.create!(
    group: group,
    amt_invested: Faker::Number.number(rand_num)
  )
end

def random_tribe
  Tribe.all.sample
end

#
# The big method on campus
#

def add_to_random_tribe(num_users)
  num_users.times do |sequence|
    user = create_user(sequence)
    tribe = random_tribe

    if has_groups?(tribe)
      last_group = tribe.groups.last

      if is_full?(last_group)
        last_group_letter = last_character_for(last_group.name)
        next_letter = last_group_letter.next
        new_group = create_tribe_group(tribe, next_letter)
        join_group(user, new_group)
      else
        join_group(user, last_group)
      end
    else
      new_group = create_tribe_group(tribe, "A")
      join_group(user, new_group)
    end
  end
end

#
# Helper methods
#

def create_tribe_group(tribe, letter)
  tribe.groups.create!(name: "Group #{letter}")
end

def has_groups?(tribe)
  tribe.groups.any?
end

def is_full?(group)
  group.users.count == 99
end

def last_character_for(string)
  string[string.length - 1]
end

#
# Create some magic (change num_tribes and num_users to whatever you want :)
#

num_tribes = 10
num_users = 2000

create_tribes(num_tribes)
add_to_random_tribe(num_users)
