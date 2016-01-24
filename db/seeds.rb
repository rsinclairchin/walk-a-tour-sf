random_key = rand(1..5)

5.times.map do 
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              email: Faker::Internet.free_email,
              password: Faker::Hipster.word)
end

5.times.map do
  Tour.create(title: Faker::Book.title,
              description: Faker::Hipster.sentence,
              duration: Faker::Number.decimal(2),
              distance: Faker::Number.decimal(2),
              rating: Faker::Number.digit,
              user_id: random_key)
end

10.times.map do
  Highlight.create(title: Faker::App.name,
                   category: Faker::Hacker.noun,
                   address: Faker::Address.street_address,
                   user_id: random_key,
                   tour_id: random_key)
end
