# random_key = rand(1..5)

# 5.times.map do
#   User.create(first_name: Faker::Name.first_name,
#               last_name: Faker::Name.last_name,
#               email: Faker::Internet.free_email,
#               password: Faker::Hipster.word)
# end

# 5.times.map do
#   Tour.create(title: Faker::Book.title,
#               description: Faker::Hipster.sentence,
#               duration: Faker::Number.decimal(2),
#               distance: Faker::Number.decimal(2),
#               rating: Faker::Number.digit,
#               user_id: random_key)
# end

# 10.times.map do
#   Highlight.create(title: Faker::App.name,
#                    category: Faker::Hacker.noun,
#                    address: Faker::Address.street_address,
#                    user_id: random_key,
#                    tour_id: random_key)
# end


User.create(first_name: "Keanu",
              last_name: "Reeves",
              email: "keanu@email.com",
              password: "keanurules")

Tour.create(title: "Dev Bootcamp",
              description: "All the best spots at DBC",
              duration: 2,
              distance: 1,
              rating: 5,
              user_id: 1)

Highlight.create(title: "Dev Bootcamp",
                 category: "Schools",
                 address: "633 Folsom Street, San Francisco, CA",
                 latitude:37.7845852,
                 longitude: -122.3994032,
                 user_id: 1,
                 tour_id: 1)

  Highlight.create(title: "Thirsty Bear",
                   category: "Bars",
                   address: "661 Howard Street, San Francisco, CA",
                   latitude: 37.7853795,
                   longitude: -122.4016937,
                   user_id: 1,
                   tour_id: 1)