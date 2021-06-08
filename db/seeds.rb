require 'faker'
Property.destroy_all
User.destroy_all

5.times do
    User.create(
        email:Faker::Internet.email, 
        password:"coucoucoucou"
    )
end

10.times do 
    Property.create(
        name:Faker::Name.name,
        description:Faker::Quote.famous_last_words, 
        price: rand(10..50),
        user_id: rand(1..5)
    )
end

puts "seed ended"