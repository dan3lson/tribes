# Create tribes

5.times do |i|
  Tribe.create!(name: "Tribe #{i}")
end

# Create groups
100.times do |i|
  group = Group.create!(name: "Group #{i}")
end

# Create users and them to groups with investments
Group.all.each_with_index do |group, i|
  user = User.create!(first_name: "User #{i}")
  user.groups_users.create!(group: group, amt_invested: rand(999999))
end
