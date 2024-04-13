# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing records
Restaurant.destroy_all

# Array of restaurant attributes
restaurants_attributes = [
  {
    name: "Restaurant 1",
    address: "Address 1",
    phone_number: "123-456-7890",
    category: "italian",
  },
  {
    name: "Restaurant 2",
    address: "Address 2",
    phone_number: "987-654-3210",
    category: "french",
  },
  {
    name: "Restaurant 3",
    address: "Address 3",
    phone_number: "456-789-0123",
    category: "japanese",
  },
  {
    name: "Restaurant 4",
    address: "Address 4",
    phone_number: "321-654-0987",
    category: "chinese",
  },
  {
    name: "Restaurant 5",
    address: "Address 5",
    phone_number: "789-012-3456",
    category: "belgian",
  }
]

# Create restaurants from attributes
restaurants_attributes.each do |attributes|
  restaurant = Restaurant.find_or_initialize_by(name: attributes[:name])
  restaurant.address = attributes[:address]
  restaurant.phone_number = attributes[:phone_number]
  restaurant.category = attributes[:category]
  restaurant.save!
end
