


# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"
uploaded_urls = JSON.parse(File.read('uploaded_images.json'))


puts "Clearing database..."
Booking.destroy_all
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

car1 = Car.create!(
  make: "BMW",
  model: "X5",
  year: 2015,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: bob,
  description: "A spacious SUV with a powerful engine.",
  price_per_day: 50.0
)
[
  "https://www.europeanprestige.co.uk/blobs/stock/354/images/1b520f39-4b3d-4b86-8073-d88da0929868/hi4a2993.jpg?width=2000&height=1333",
  "https://www.europeanprestige.co.uk/blobs/stock/354/images/d4687b21-8d2e-407c-8b78-11fb0ec7ffa3/hi4a3016.jpg?width=2000&height=1333",
  "https://www.europeanprestige.co.uk/blobs/stock/354/images/210b5799-519b-4481-b417-db94a53d99aa/hi4a3006.jpg?width=2000&height=1333",
  "https://www.europeanprestige.co.uk/blobs/stock/354/images/f3cd96ad-5f10-41b9-984a-83f6a3809315/hi4a3004.jpg?width=2000&height=1333"
].each do |url|
  file = URI.parse(url).open
  car1.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car2 = Car.create!(
  make: "Volkswagen",
  model: "Beetle",
  year: 2010,
  fuel_type: "Petrol",
  transmission: "Manual",
  user: alice,
  description: "A classic car with a unique design.",
  price_per_day: 30.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/45a7e96bb53a40af8b06e004f32f93c7.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/1834cf97758241fdb90db7a3f827f30d.jpg"
].each do |url|
  file = URI.parse(url).open
  car2.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car3 = Car.create!(
  make: "Mercedes",
  model: "G-wagon",
  year: 2020,
  fuel_type: "Electric",
  transmission: "Auto",
  user: chris,
  description: "A luxury SUV with advanced technology.",
  price_per_day: 100.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/5f85a727f81648bb879f71521910875f.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/6c144d8e40004743b7318681bb1cdb11.jpg"
].each do |url|
  file = URI.parse(url).open
  car3.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car4 = Car.create!(
  make: "BMW",
  model: "3 Series",
  year: 2017,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: steve,
  description: "A compact executive car with sporty handling.",
  price_per_day: 40.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/d064be327cc84de69952aaf2f9590d3c.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/04a4772497504ed49ad3dc6269a58721.jpg"
].each do |url|
  file = URI.parse(url).open
  car4.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car5 = Car.create!(
  make: "Volkswagen",
  model: "Golf",
  year: 2019,
  fuel_type: "Hybrid",
  transmission: "Manual",
  user: andy,
  description: "A versatile hatchback with great fuel efficiency.",
  price_per_day: 35.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/57109a7786674a48abea35cff691e5c1.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/1f9943c6ee094f95901338bdf4c9021e.jpg"
].each do |url|
  file = URI.parse(url).open
  car5.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car6 = Car.create!(
  make: "Mercedes",
  model: "A-Class",
  year: 2020,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: harry,
  description: "A stylish hatchback with a premium interior.",
  price_per_day: 45.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/b0abe7ea66b6493db02e53e1ddd5f566.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/328d7fb8e5cd46f0bb4ad93946c1e3be.jpg"
].each do |url|
  file = URI.parse(url).open
  car6.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car7 = Car.create!(
  make: "BMW",
  model: "M4",
  year: 2019,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: alex,
  description: "A high-performance sports car with stunning design.",
  price_per_day: 120.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/db81b39d2c9b4c0e8577cb0d93e7c1a5.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/2329224debb0468283938f2e05c3ecd5.jpg"
].each do |url|
  file = URI.parse(url).open
  car7.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car8 = Car.create!(
  make: "Volkswagen",
  model: "Touraeg",
  year: 2022,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: tony,
  description: "A luxury SUV with off-road capabilities.",
  price_per_day: 80.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/eaf6139831fd4b8b9ab17a7c6fc13754.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/6ad00fa333424f379bc7463768f11e44.jpg"
].each do |url|
  file = URI.parse(url).open
  car8.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car9 = Car.create!(
  make: "Mercedes",
  model: "C-class",
  year: 2023,
  fuel_type: "Diesel",
  transmission: "Auto",
  user: laura,
  description: "A compact executive car with a comfortable ride.",
  price_per_day: 60.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/6df9eb2fe10d483c8ef1a8c35ee6066f.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/eb617d7c431741b78e9f8309e979bd2c.jpg"
].each do |url|
  file = URI.parse(url).open
  car9.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car10 = Car.create!(
  make: "Citreon",
  model: "C4",
  year: 2015,
  fuel_type: "Diesel",
  transmission: "Manual",
  user: beth,
  description: "A compact car with a spacious interior.",
  price_per_day: 25.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/9a08fd7686984116a35a76c1467259b6.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/c25c4a1a36274c0fb7270826745ba434.jpg"
].each do |url|
  file = URI.parse(url).open
  car10.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car11 = Car.create!(
  make: "Peugeot",
  model: "208",
  year: 2018,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: mo,
  description: "A small hatchback with a stylish design.",
  price_per_day: 30.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/c1121460dc7e4728ba7fd411c04918a0.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/1620417696ab40b3a71541eb7d6fa70f.jpg"
].each do |url|
  file = URI.parse(url).open
  car11.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

car12 = Car.create!(
  make: "Audi",
  model: "A4",
  year: 2020,
  fuel_type: "Petrol",
  transmission: "Auto",
  user: james,
  description: "A compact executive car with a premium feel.",
  price_per_day: 55.0
)
[
  "https://m.atcdn.co.uk/a/media/w1024/69be99fe6c44498a83ff383ad415c209.jpg",
  "https://m.atcdn.co.uk/a/media/w1024/5f90d7670363451f8e1df7c262c306f5.jpg"
].each do |url|
  file = URI.parse(url).open
  car12.images.attach(io: file, filename: "nes.png", content_type: "image/png")
end

Car.update_all(latitude: nil, longitude: nil) # optional reset

Car.all.each do |car|
  car.latitude = 51.5 + rand * 0.1
  car.longitude = -0.15 + rand * 0.1
  car.save!
end

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
  car: Car.last,
  user: User.last
)

puts "Created #{Booking.count} bookings"
puts "Seeding completed!"
