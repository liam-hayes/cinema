class CreateScreens < ActiveRecord::Migration
  def change
    create_table :screens do |t|
      t.string :screen_size

      t.timestamps null: false
    end
  end
end
