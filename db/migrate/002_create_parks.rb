class CreateParks < ActiveRecord::Migration[5.1]

    def change
        create_table :parks do |t|
            t.string    :name
            t.string    :city
            t.string    :state
            t.string    :address
            t.string    :opens
            t.string    :closes
        end
    end


end