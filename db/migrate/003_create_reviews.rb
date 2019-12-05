class CreateReviews < ActiveRecord::Migration[5.1]

    def change
        create_table :reviews do |t|
            t.string :user
            t.string :review
            t.integer :user_id
            t.integer :park_id
        end
    end
end