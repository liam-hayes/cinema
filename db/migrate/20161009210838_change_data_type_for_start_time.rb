class ChangeDataTypeForStartTime < ActiveRecord::Migration
  def change
	change_column :screenings, :start_time, :string
  end
end
