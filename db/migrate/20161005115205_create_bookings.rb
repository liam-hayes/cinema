class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :person_id
      t.integer :screening_id

      t.timestamps null: false
    end
  end
end
