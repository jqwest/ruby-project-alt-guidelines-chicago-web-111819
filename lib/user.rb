class User < ActiveRecord::Base
    has_many :reviews
    has_many :parks, through: :reviews
    

    


    #     if 

    # end

    # def find_user_review
    #     puts "Lets change your review!\nPlease select which review you would like to change"
    #     review = gets.chomp
    #     user_reviews = Review.where(:user_id => 1..10)
        
    # end

    # def self.update_review
    #     user_review_update = self.review






#many to many need a join table

# number_of_reviews.times do
#     #     Review.create(
    
#     #     user:       (1..number_of_users)
#     #     review:     Faker::Hipster.paragraph(2, false, 4)
#     #     user_id:    (1..number_of_users).to_a.sample
#     #     park_id:    (1..number_of_parks)
#     #     )
end