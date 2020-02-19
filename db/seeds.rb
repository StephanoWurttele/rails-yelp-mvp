require 'faker'

RESTAURANTS = ["chinese", "italian", "japanese"]

5.times { restaurant = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: RESTAURANTS.sample) }

