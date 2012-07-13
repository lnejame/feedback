class AddTwoColumnsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :other1, :string
    add_column :companies, :other2, :string
  end
end
