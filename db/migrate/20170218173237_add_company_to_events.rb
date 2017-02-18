class AddCompanyToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :company, :string
  end
end
