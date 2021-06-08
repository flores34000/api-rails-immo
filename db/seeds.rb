# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Property.destroy_all

require 'faker'
5.times do 
    Property.create(name:Faker::Name.name, description:Faker::Quote.famous_last_words, price: rand(10..50))
end
5.times do
    User.create(email:Faker::Internet.email, password:"coucoucoucou")
end
puts "seed ended"