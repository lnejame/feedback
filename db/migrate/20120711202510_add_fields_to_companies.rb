class AddFieldsToCompanies < ActiveRecord::Migration
  def change
    change_table :companies do |t|
      t.text :description
      t.string :current_sys
      t.string :users
    end
  end
end
