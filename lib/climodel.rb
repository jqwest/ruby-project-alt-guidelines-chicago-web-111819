class CommandLineInterface

    def clear_screen!
       puts "\e[H]\e[2J"
    end

    def user_login
        puts "Enter your name to login"
        name = gets.chomp
        User.find_or_create_by(first_name: name)
        start_menu
    end



    def start_menu
        puts " To view the parks near you press 1.\n To write a review press 2.\n To change or update a review press 3.\n To delete a review press 4.\n To quit type 'exit' "
    end

    def selection_menu
       
        selection = gets.chomp
    
        case selection

    when "1"
        Park.all_print_parks
    when "2"
        menu = "Reviews"
    when "3"
        menu = "Leave a review"
    when "4" 
        menu = "Create Account"
    when "exit"
        abort("Goodbye")
        end 
    end

    


    def run
        clear_screen!
        puts "Welcome to the Park finder app"
        user_login
        selection_menu
        
    end

    
    # # Rogers park, park finder
    
    
    # # To view the nearby parks press 1 - READ
    #  puts " To view the parks near you press 1.\n To write a review press 2.\n To change or update a review press 3.\n To delete a review press 4."
    # binding.pry
    
    
    # # To view reviews of the nearby parks press 2 - READ
    
    # # If you would like to leave a review OR update a review please login.  3
    
    # #If you are a new user please create an account. -  CREATE / UPDATE. 4
    
    
    # # "UNDER USER PROFILE" create a review, update a review, delete a review.
   

end