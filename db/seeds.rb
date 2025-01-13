# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Bookmark.destroy_all
Recipe.destroy_all
Category.destroy_all

puts "Creating recipes..."
carbonara = Recipe.create!(
  name: "Spaghetti Carbonara",
  description: "A true Italian Carbonara recipe, ready in about 30 minutes. Made with eggs, pecorino romano, guanciale and black pepper.",
  image_url: "https://example.com/carbonara.jpg",
  rating: 8.5
)

ratatouille = Recipe.create!(
  name: "Ratatouille",
  description: "A classic French Provençal stewed vegetable dish made with tomatoes, zucchini, eggplant, bell peppers, and herbs.",
  image_url: "https://example.com/ratatouille.jpg",
  rating: 7.8
)

caesar_salad = Recipe.create!(
  name: "Caesar Salad",
  description: "Crisp romaine lettuce, creamy dressing, parmesan cheese, and crunchy croutons make up this classic salad.",
  image_url: "https://example.com/caesar.jpg",
  rating: 7.2
)

croissant = Recipe.create!(
  name: "Classic French Croissants",
  description: "Buttery, flaky, and golden-brown French pastries. Perfect for breakfast.",
  image_url: "https://example.com/croissant.jpg",
  rating: 9.1
)

puts "Creating categories..."
italian = Category.create!(name: "Italian")
french = Category.create!(name: "French")
salads = Category.create!(name: "Salads")
breakfast = Category.create!(name: "Breakfast")
quick = Category.create!(name: "Quick & Easy")

puts "Creating bookmarks..."
Bookmark.create!(
  recipe: carbonara,
  category: italian,
  comment: "Traditional Roman recipe, perfect for dinner parties!"
)

Bookmark.create!(
  recipe: carbonara,
  category: quick,
  comment: "Great for a quick weeknight dinner, ready in 30 minutes!"
)

Bookmark.create!(
  recipe: ratatouille,
  category: french,
  comment: "Just like in the Pixar movie! Takes time but worth it."
)

Bookmark.create!(
  recipe: caesar_salad,
  category: salads,
  comment: "Perfect lunch option, don't forget to massage the kale!"
)

Bookmark.create!(
  recipe: caesar_salad,
  category: quick,
  comment: "Quick lunch solution, can be prepared in advance."
)

Bookmark.create!(
  recipe: croissant,
  category: french,
  comment: "Classic French breakfast pastry, requires overnight preparation."
)

Bookmark.create!(
  recipe: croissant,
  category: breakfast,
  comment: "Perfect weekend breakfast project, worth the effort!"
)

puts "Finished seeding!"
