require 'faker'
require_all 'lib'

# ActiveRecord::Base.logger = Logger.new(STDOUT)


# User.destroy_all
# Park.destroy_all
# Review.destroy_all
# ParkAmenity.destroy_all
number_of_users = 30
number_of_reviews = 30
city = "Chicago"
state = "Illinois"

# number_of_users.times do
#     User.create(
#         first_name: Faker::Name.first_name,
#         last_name:  Faker::Name.last_name,
#         city:       Faker::Address.city,
#         state:      Faker::Address.state,
#         street_address: Faker::Address.street_address
#          )
# end

# number_of_reviews.times do
#     Review.create(

#     user:       (1..number_of_users)
#     review:     Faker::Hipster.paragraph(2, false, 4)
#     user_id:    (1..number_of_users).to_a.sample
#     park_id:    (1..number_of_parks)
#     )
# end
   
