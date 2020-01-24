require_relative '../config/environment'
ActiveRecord::Base.logger = nil

cli = CommandLineInterface.new

while true

    cli.clear_screen
    puts "-----------------------"
    puts "Welcome to Dannys Dog Walkers!"
    puts "-----------------------"
    puts "Please enter a User ID to login"
    
    cli.view_users
    puts "-----------------------"
    selected_id = gets.chomp

    login_user = User.find_by(id: selected_id)

    puts "Welcome #{login_user.name}! Please select one of the following options:"
    puts "----------------------------------------"
    puts "Enter 1 to view the total number of your walks"
    puts "Enter 2 to add a new dog to your roster"
    puts "Enter 3 to update an existing dog profile"
    puts "Enter 4 to delete a dog from your roster"
    puts "To exit, type 'exit'"

    selection = gets.chomp
    
    if selection == "1"
        login_user.num_walks
        
        sleep(6)
    elsif selection == "2"
        puts "#{login_user.name} your current dog roster is:"
        login_user.view_my_dogs
        puts "----------------------------"
        puts "Please create a new dog to be added to your roster"
        
        puts "Please enter a name"
        new_name = gets.chomp
        puts "Please enter an age"
        new_age = gets.chomp
        puts "Please enter a breed"
        new_breed = gets.chomp
        login_user.add_new_dog_to_roster(new_name, new_age, new_breed)
        puts "----------------------------"

        login_user.view_my_dogs

        puts "#{login_user.name} you have added successfully added the dog #{new_name} to your roster"
        puts "----------------------------"

        login_user.view_my_dogs
        sleep(6)
    
    elsif selection == "3"
       puts "Lets update a dog in your roster. Please select a dog from below"
       puts "----------------------------"

        login_user.view_my_dogs
        puts "----------------------------"

        dog_selection = gets.chomp
        
       puts "Please enter the new name for your dog"

        new_selection = gets.chomp
    
        login_user.update_my_dog(dog_selection, new_selection)

        puts "Here is your updated roster"
         
        login_user.view_my_dogs
        sleep(4)
    elsif selection == "4"
        puts "Please select the ID of the dog from you roster to remove"
        puts "-----------------------------------------------"
        login_user.view_my_dogs

        user_dog_remove = gets.chomp.to_i

        login_user.remove_a_dog_from_my_roster(user_dog_remove)

       puts "------------------------------------------------"

         login_user.view_my_dogs
         sleep(4)
    
    elsif selection == "exit"
         cli.exit_app
    elsif selection == nil
         cli.clear_screen
        puts "Please input a correct response"
        sleep(3)
    end
end