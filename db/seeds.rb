# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Clear existing data first to avoid duplicate entries when we re-run seeds
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

# Restaurant 1
Restaurant.create!(
  name: 'Epicure',
  address: '75 Rue La Boétie, 75008 Paris',
  phone_number: '01 53 43 43 00',
  category: 'french'
)

# Restaurant 2
Restaurant.create!(
  name: 'Dragon Palace',
  address: '24 Baker Street, London',
  phone_number: '+44 20 1234 5678',
  category: 'chinese'
)

# Restaurant 3
Restaurant.create!(
  name: 'Pasta Paradise',
  address: '123 Via Roma, Rome',
  phone_number: '+39 06 9876 5432',
  category: 'italian'
)

# Restaurant 4
Restaurant.create!(
  name: 'Sushi World',
  address: '42 Sakura Avenue, Tokyo',
  phone_number: '+81 3 1234 5678',
  category: 'japanese'
)

# Restaurant 5
Restaurant.create!(
  name: 'Belgian Delights',
  address: '15 Grand Place, Brussels',
  phone_number: '+32 2 123 4567',
  category: 'belgian'
)

puts "Created #{Restaurant.count} restaurants!"
