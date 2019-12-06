class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :park

    def self.create_review(user)
        review = 
                [["What park did you visit?",   :dude],
                ["Please leave your review:", :review]]
                answers = review.inject({}) do |answers, qv|
                review, value = qv
                print review + ' '
                answers[value] = gets.chomp
                answers
                end
            
            Review.create(user_id: user.id, park_id: answers[:dude], review: answers [:review])
            puts "Thank you for you input!"
            
            

     end
    


     def self.all_print_reviews
        puts "Please select a User ID and  User Review to edit a review"

        self.all.map { |review| puts "#{review.id}. User ID: #{review.user_id} User Review: #{review.review}"}
        
        id_response = gets.chomp
        id_response
        review_response = gets.chomp
        review_response
    end

    


end



