# Create Tribes

5.times do |i|
  Tribe.create!(name: "Tribe #{i}")
end

# Create Groups
# Add Groups to Tribes
# Add Users to Groups

20.times do |i|
  tribe = Tribe.all.sample
  group = tribe.groups.create!(name: "Group #{i}")
  group.users.create!(first_name: "First Name #{i}")
end

100.times do |i|
  group = Group.all.sample
  group.users.create!(first_name: "First Name #{i}")
end
