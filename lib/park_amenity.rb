class ParkAmenity < ActiveRecord::Base

    belongs_to :park
end

#associations live on the model file
#the many back to the one

# belongs_to :parks

#belonging assumptions
#looks like they are saying system
#that measn there must be a column on this calss called system_id
#and there is an assoicated id field on ta table called systems