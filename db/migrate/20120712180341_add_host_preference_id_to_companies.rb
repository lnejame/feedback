class AddHostPreferenceIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :host_preference_id, :boolean
  end
end
