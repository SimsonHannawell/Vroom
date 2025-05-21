


# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing database..."

Car.destroy_all
User.destroy_all

puts "Creating new users..."

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
steve = User.create!(
  email: "steve@gmail.com",
  password: "password123"
)
andy = User.create!(
  email: "andy@gmail.com",
  password: "password456"
)
harry = User.create!(
  email: "harry@gmail.com",
  password: "password789"
)
alex = User.create!(
  email: "alex@gmail.com",
  password: "password123"
)
tony = User.create!(
  email: "tony@gmail.com",
  password: "password456"
)
laura = User.create!(
  email: "laura@gmail.com",
  password: "password789"
)
beth = User.create!(
  email: "beth@gmail.com",
  password: "password123"
)
mo = User.create!(
  email: "mo@gmail.com",
  password: "password456"
)
james = User.create!(
  email: "james@gmail.com",
  password: "password789"
)


puts "Created #{User.count} users"

puts "Creating new cars..."

Car.create!(
  make: "BMW",
  model: "X5",
  year: 2015,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: bob
)
Car.create!(
  make: "Volkswagen",
  model: "Beetle",
  year: 2010,
  fuel_type: "Petrol",
  transmission: "Manual",
  user: alice
)
Car.create!(
  make: "Mercedes",
  model: "G-wagon",
  year: 2020,
  fuel_type: "Electric",
  transmission: "Auto",
  user: chris
)
Car.create!(
  make: "BMW",
  model: "3 Series",
  year: 2017,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: steve
)
Car.create!(
  make: "Volkswagen",
  model: "Golf",
  year: 2019,
  fuel_type: "Hybrid",
  transmission: "Manual",
  user: andy
)
Car.create!(
  make: "Mercedes",
  model: "A-Class",
  year: 2020,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: harry
)
Car.create!(
  make: "BMW",
  model: "M4",
  year: 2019,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: alex
)
Car.create!(
  make: "Volkswagen",
  model: "Touraeg",
  year: 2022,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: tony
)
Car.create!(
  make: "Mercedes",
  model: "C-class",
  year: 2023,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: laura
)
Car.create!(
  make: "Citreon",
  model: "C4",
  year: 2015,
  fuel_type: "Diesel",
  transmission: "Manual",
  user: beth
)
Car.create!(
  make: "Peugeot",
  model: "208",
  year: 2018,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: mo
)
Car.create!(
  make: "Audi",
  model: "A4",
  year: 2020,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: james
)

puts "Created #{Car.count} cars"
