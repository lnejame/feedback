class AddSystemPreferenceIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :system_preference_id, :boolean
  end
end
