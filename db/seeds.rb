# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

puts 'Creating 5 fake restaurants...'

categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  review = Review.new(
    content: Faker::Restaurant.review,
    rating: rand(5)
  )
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    category: categories.sample,
    address: Faker::Address.street_address
  )
  restaurant.save!
  review.restaurant = restaurant
  review.save!
end

restaurant1 = Restaurant.new(
  name: "Epicure",
  category: "french",
  address: "75008 Paris"
)
restaurant1.save

yummy1 = Review.new(
  content: "yummy yummy",
  rating: 4
)
yummy1.restaurant = restaurant1
yummy1.save

restaurant2 = Restaurant.new(
  name: Faker::Restaurant.name,
  category: categories.sample,
  address: Faker::Address.street_address
)
restaurant2.save

yummy2 = Review.new(
  content: Faker::Restaurant.review,
  rating: rand(5)
)
yummy2.restaurant = restaurant2
yummy2.save

restaurant3 = Restaurant.new(
  name: Faker::Restaurant.name,
  category: categories.sample,
  address: Faker::Address.street_address
)
restaurant3.save

yummy3 = Review.new(
  content: Faker::Restaurant.review,
  rating: rand(5)
)
yummy3.restaurant = restaurant3
yummy3.save

restaurant4 = Restaurant.new(
  name: Faker::Restaurant.name,
  category: categories.sample,
  address: Faker::Address.street_address
)
restaurant4.save

yummy4 = Review.new(
  content: Faker::Restaurant.review,
  rating: rand(5)
)
yummy4.restaurant = restaurant4
yummy4.save

restaurant5 = Restaurant.new(
  name: Faker::Restaurant.name,
  category: categories.sample,
  address: Faker::Address.street_address
)
restaurant5.save

yummy5 = Review.new(
  content: Faker::Restaurant.review,
  rating: rand(5)
)
yummy5.restaurant = restaurant5
yummy5.save

puts 'Finished!'
