# Create Tribes

5.times do |i|
  Tribe.create!(name: "Tribe #{i}")
end

# Create Groups and Add Them to Tribes

20.times do |i|
  tribe = Tribe.all.sample
  tribe.groups.create!(name: "Group #{i}")
end
