class AddColumsToCompanies1 < ActiveRecord::Migration
  def change
    add_column :companies, :syspref, :boolean
    add_column :companies, :hostpref, :boolean
  end
end
