require 'faker'
Property.destroy_all
User.destroy_all

30.times do
    User.create(
        email:Faker::Internet.email, 
        password:"coucoucoucou"
    )
end

User.all.each do |user|
    4.times do
        Property.create(
            name:Faker::Name.name,
            description:Faker::Quote.famous_last_words,
            price: rand(100..500),
            user_id: user.id
        )
    end
end


puts "seed ended"