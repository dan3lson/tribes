# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Tribes

5.times do |i|
  Tribe.create!(name: "Tribe #{i}")
end

# Create Groups

10.times do |i|
  Group.create!(name: "Group #{i}")
end

# Add Groups to Tribes

10.times do |i|
  tribe = Tribe.all.sample

  Group.all.each do |group|
    tribe.groups << group
  end
end
