# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
takumi = {name: "Takumi", address: "Hohenstaufenring 58, 50674 Köln", phone_number:"0221/34899171", category: "chinese"}
chum_chai = {name: "Chum Chai", address: "Friesenwall 29, 50672 Köln", phone_number:"0221/79003798", category: "chinese"}

[takumi, chum_chai].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
