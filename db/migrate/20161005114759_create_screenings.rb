class CreateScreenings < ActiveRecord::Migration
  def change
    create_table :screenings do |t|
      t.integer :film_id
      t.integer :screen_id
      t.date :date
      t.time :start_time

      t.timestamps null: false
    end
  end
end
