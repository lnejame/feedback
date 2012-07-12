class AddColumnsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :implement_id, :string
    add_column :companies, :budget, :boolean
    add_column :companies, :setbudget_id, :string
    add_column :companies, :prefbudget_id, :string
    add_column :companies, :comments, :text
  end
end
