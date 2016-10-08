class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.integer :run_time
      t.string :genre
      t.string :rating
      t.string :image

      t.timestamps null: false
    end
  end
end
