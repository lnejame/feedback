class ChangeCurrentsys < ActiveRecord::Migration
  def change
    rename_column :companies, :current_sys, :currentsystem_id
  end
end
