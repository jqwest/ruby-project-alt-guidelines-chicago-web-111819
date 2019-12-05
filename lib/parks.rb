class Park < ActiveRecord::Base
    has_many :amenities
    has_many :reviews
    has_many :users, through: :reviews


def self.all_print_parks
    self.all.map { |park| puts park.name }
    
end





end


