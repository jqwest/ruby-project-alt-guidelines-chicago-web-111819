20.times do
    User.create(name: Faker::Name.name, phone_number: Faker::Number.number(digits: 10))
end

20.times do
    Dog.create(name: Faker::Creature::Dog.name, age:  Faker::Number.within(range: 1..10),
        breed: Faker::Creature::Dog.breed)
end

20.times do
    Walk.create(user_id: rand(20), dog_id: rand(182..222), walk_duration: rand(30..90), poops: Faker::Number.within(range: 1..6), comments: Faker::TvShows::RickAndMorty.quote)
end




