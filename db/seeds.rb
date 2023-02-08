# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Movie.destroy_all


genres = ["action", "horreur", "comédie", "drame"]


100.times do
  movie = Movie.create!(name: Faker::Movie.title, 
                        year: Faker::Number.between(from: 1900, to: 2020),
                        genre: genres[rand(0..3)],
                        synopsis: Faker::Quote.matz,
                        director: Faker::Book.author,
                        allocine_rating: rand(0.0..5.0).round(1),
                        already_seen: boolean = false)
end