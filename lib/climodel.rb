class CommandLineInterface

    def clear_screen!
       puts "\e[H]\e[2J"
    end

    def user_login
        puts "Enter your name to login"
        name = gets.chomp
        user = User.find_or_create_by(first_name: name)
        user   
    end


    # def update_a_review
    # review = Review.all.find_by(user_id: )
    # review
    # end

    # def find_user_review
    #     puts "Lets change your review!\nPlease select which review you would like to change"
    #     review = gets.chomp
    #     user_reviews = Review.where(:user_id => 1..10)
        
    # end
    # def update_review
    #     puts "Please change or update your review"
    #     name = gets.chomp
    #     review = Review.update(user_id:, review_id:)
    # end
    

    def start_menu
        puts " To view the parks near you press 1.\n To write a review press 2.\n To change or update a review press 3.\n To delete a review press 4.\n To quit type 'exit' "
    end

    
    def run
        clear_screen!
        puts "Welcome to the Park finder app"
        user = user_login
        start_menu
        
        selection = gets.chomp
    
        case selection

    when "1"
        Park.all_print_parks
        Review.create_review(user)
     when "2"
        Park.all_print_parks
        Review.create_review(user)
    when "3"
        # find_user_review
        #"Change/Update review"
        # update_review = change_review
        #  Review.last.update
        # Review.list_reviews
        Review.all_print_reviews
        

    when "4" 
         #"Delete Review"
        #  Review.last.delete

    when "exit"
        abort("Goodbye")
        end 
        
    end
    
    
    # # If you would like to leave a review OR update a review please login.  3
    
    # #If you are a new user please create an account. -  CREATE / UPDATE. 4
end

# # Rogers park, park finder
    
    # Finished CRUDs

    # # To view the nearby parks press 1 - READ
    #  puts " To view the parks near you press 1.\n To write a review press 2.\n To change or update a review press 3.\n To delete a review press 4."
    # binding.pry
    
    
    # # To view reviews of the nearby parks press 2 - READ
    
    # # "UNDER USER PROFILE" create a review, update a review, delete a review




#code to be cleaned out


# def selection_menu
    #     selection = gets.chomp
    #     case selection
    # when "1"
    #     Park.all_print_parks
    # when "2"
    #     created_review
    # when "3"
    #      #"Change/Update review"
    # when "4" 
    #      #"Delete Review"
    # when "exit"
    #     abort("Goodbye")
    #     end 
    # end