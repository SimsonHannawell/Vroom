


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
  password: "password123",
  name: "Bob"
)

alice = User.create!(
  email: "alice@gmail.com",
  password: "password456",
  name: "Alice"
)

chris = User.create!(
  email: "chris@gmail.com",
  password: "password789",
  name: "Chris"
)
steve = User.create!(
  email: "steve@gmail.com",
  password: "password123",
  name: "Steve"
)
andy = User.create!(
  email: "andy@gmail.com",
  password: "password456",
  name: "Andy"
)
harry = User.create!(
  email: "harry@gmail.com",
  password: "password789",
  name: "Harry"
)
alex = User.create!(
  email: "alex@gmail.com",
  password: "password123",
  name: "Alex"
)
tony = User.create!(
  email: "tony@gmail.com",
  password: "password456",
  name: "Tony"
)
laura = User.create!(
  email: "laura@gmail.com",
  password: "password789",
  name: "Laura"
)
beth = User.create!(
  email: "beth@gmail.com",
  password: "password123",
  name: "Beth"
)
mo = User.create!(
  email: "mo@gmail.com",
  password: "password456",
  name: "Mo"
)
james = User.create!(
  email: "james@gmail.com",
  password: "password789",
  name: "James"
)


puts "Created #{User.count} users"

puts "Creating new cars..."

Car.create!(
  make: "BMW",
  model: "X5",
  year: 2015,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: bob,
  description: "A spacious SUV with a powerful engine.",
  price_per_day: 50.0
)

Car.create!(
  make: "Volkswagen",
  model: "Beetle",
  year: 2010,
  fuel_type: "Petrol",
  transmission: "Manual",
  user: alice,
  description: "A classic car with a unique design.",
  price_per_day: 30.0
)

Car.create!(
  make: "Mercedes",
  model: "G-wagon",
  year: 2020,
  fuel_type: "Electric",
  transmission: "Auto",
  user: chris,
  description: "A luxury SUV with advanced technology.",
  price_per_day: 100.0
)

Car.create!(
  make: "BMW",
  model: "3 Series",
  year: 2017,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: steve,
  description: "A compact executive car with sporty handling.",
  price_per_day: 40.0
)

Car.create!(
  make: "Volkswagen",
  model: "Golf",
  year: 2019,
  fuel_type: "Hybrid",
  transmission: "Manual",
  user: andy,
  description: "A versatile hatchback with great fuel efficiency.",
  price_per_day: 35.0
)

Car.create!(
  make: "Mercedes",
  model: "A-Class",
  year: 2020,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: harry,
  description: "A stylish hatchback with a premium interior.",
  price_per_day: 45.0
)

Car.create!(
  make: "BMW",
  model: "M4",
  year: 2019,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: alex,
  description: "A high-performance sports car with stunning design.",
  price_per_day: 120.0
)

Car.create!(
  make: "Volkswagen",
  model: "Touraeg",
  year: 2022,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: tony,
  description: "A luxury SUV with off-road capabilities.",
  price_per_day: 80.0
)

Car.create!(
  make: "Mercedes",
  model: "C-class",
  year: 2023,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: laura,
  description: "A compact executive car with a comfortable ride.",
  price_per_day: 60.0
)

Car.create!(
  make: "Citreon",
  model: "C4",
  year: 2015,
  fuel_type: "Diesel",
  transmission: "Manual",
  user: beth,
  description: "A compact car with a spacious interior.",
  price_per_day: 25.0
)

Car.create!(
  make: "Peugeot",
  model: "208",
  year: 2018,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: mo,
  description: "A small hatchback with a stylish design.",
  price_per_day: 30.0
)

Car.create!(
  make: "Audi",
  model: "A4",
  year: 2020,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: james,
  description: "A compact executive car with a premium feel.",
  price_per_day: 55.0
)

puts "Created #{Car.count} cars"

puts "Creating new bookings..."

Booking.create!(
  start_date: DateTime.now,
  end_date: DateTime.now + 1.day,
  car: Car.first,
  user: User.first
)
Booking.create!(
  start_date: DateTime.now + 1.day,
  end_date: DateTime.now + 2.days,
  car: Car.second,
  user: User.second
)
Booking.create!(
  start_date: DateTime.now + 2.days,
  end_date: DateTime.now + 3.days,
  car: Car.third,
  user: User.third
)
Booking.create!(
  start_date: DateTime.now + 3.days,
  end_date: DateTime.now + 4.days,
  car: Car.fourth,
  user: User.fourth
)
Booking.create!(
  start_date: DateTime.now + 4.days,
  end_date: DateTime.now + 5.days,
  car: Car.fifth,
  user: User.fifth
)

Booking.create!(
  start_date: DateTime.now,
  end_date: DateTime.now + 1.day,
  car: Car.sixth,
  user: User.sixth
)

puts "Created #{Booking.count} bookings"
puts "Seeding completed!"
