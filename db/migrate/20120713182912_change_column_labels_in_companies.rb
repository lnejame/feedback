class ChangeColumnLabelsInCompanies < ActiveRecord::Migration
  def change
    rename_column :companies, :currentsystem_id, :currentsystem
    rename_column :companies, :usercount_id, :usercount
    rename_column :companies, :industry_id, :industry
    rename_column :companies, :system_preference_id, :system_preference
    rename_column :companies, :host_preference_id, :host_preference
    rename_column :companies, :setbudget_id, :setbudget
    rename_column :companies, :prefbudget_id, :prefbudget    
  end
end
