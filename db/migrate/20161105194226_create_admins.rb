class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.integer :emp_number
      t.string :first_name
      t.string :last_name
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
