class ChangeAllDateFormatInEvents < ActiveRecord::Migration[5.0]
  def up
  	change_column :events, :applicationstart, :datetime
  	change_column :events, :applicationend, :datetime
  end

  def down
  	change_column :events, :applicationstart, :date
  	change_column :events, :applicationend, :date
  end
end
