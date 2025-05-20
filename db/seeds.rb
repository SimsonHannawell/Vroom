# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "clearing databse"
Car.destroy_all
User.destroy_all

puts "creating new users"

bob = User.create!(
  email: "bob@gmail.com",
  password: "password123"
)
alice = User.create!(
  email: "alice@gmail.com",
  password: "password456"
)
chris = User.create!(
  email: "chris@gmail.com",
  password: "password789"
)
puts "created #{User.count} users"
#cars
puts "creating new cars"

Car.create!(
  make: "BMW",
  model: "X5",
  year: 2015,
  fuel: "Diesel",
  transmission: "Auto",
  user: bob
)

Car.create!(
  make: "Volkswagen",
  model: "Beetle",
  year: 2010,
  fuel: "Petrol",
  transmission: "Manual",
  user: alice
)

Car.create!(
  make: "Mercedes",
  model: "G-wagon",
  year: 2020,
  fuel: "Electric",
  transmission: "Auto",
  user: chris
)

puts "created #{Car.count} users"

#users
