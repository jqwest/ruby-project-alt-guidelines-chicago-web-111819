class CreateParkAmenities < ActiveRecord::Migration[5.1]

    def change
        create_table :park_amenities do |t|
            t.boolean   :jungle_gym
            t.boolean   :merry_go_round
            t.boolean   :baseball_field
            t.boolean   :soccer_field
            t.boolean   :basketball_court
            t.boolean   :football_field
            t.boolean   :arts_and_crafts
            t.integer :park_id

        end
    end
end







