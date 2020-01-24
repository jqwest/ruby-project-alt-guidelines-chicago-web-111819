class User < ActiveRecord::Base
    has_many :walks
    has_many :dogs, through: :walks

    def num_walks
       x = self.walks
       num_of_walks = x.count
       puts "#{self.name}, you have walked #{num_of_walks} dogs!"
    end

    def view_all_my_walks
        self.walks.all.map { |walk| puts " Walk ID: #{walk.id} \n User ID: #{walk.user_id} \n Dog ID: #{walk.dog_id}"}
    end

    def view_my_dogs
        my_dogs = self.dogs.uniq.map do |dog|
            puts "#{dog.id}: #{dog.name}"
            
        end
    end

    def add_new_dog_to_roster(name, age, breed)
        new_dog = Dog.create(name: name, age: age, breed: breed)
        Walk.create(user_id: self.id, dog_id: new_dog.id)
        self.reload
        # self.view_my_dogs
    end

    def find_my_dogs(dog)
        found_dog = self.dogs.find_by(name: dog)
        found_dog
    end

    def update_my_dog(name_one, name_two)
        # binding.pry

       found =  Dog.find_by(name: name_one)
       
       found.update(name: name_two)
       p found

    end

    def remove_a_dog_from_my_roster(id_one)
        found = Dog.find(id_one)
        found.destroy
        self.reload
        self.view_my_dogs
        # Walk.find_by(user_id: found_id).destroy
    end

    def find_my_dogs(dog)
        found_dog = self.dogs.find_by(name: dog)
        found_dog
    end

    def view_users
        User.all.map do |user|
        puts "#{user.id}: #{user.name}"
        end
    end

    def view_all_dog_names
        Dog.all.map do |dog|
            puts "#{dog.id}: #{dog.name}"
        end
    end


    def create_new_user(name, phone_number)
        User.create(name: name, phone_number: phone_number)
    end
end
 




