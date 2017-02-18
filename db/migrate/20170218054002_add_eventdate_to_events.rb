class AddEventdateToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :eventdate, :date
    add_column :events, :applicationstart, :date
    add_column :events, :applicationend, :date
    add_column :events, :requirement, :text
    add_column :events, :link, :string
  end
end
