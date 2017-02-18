class ChangeDateFormatInEvents < ActiveRecord::Migration[5.0]
  def up
  	change_column :events, :eventdate, :datetime
  end

  def down
  	change_column :events, :eventdate, :date
  end
end
