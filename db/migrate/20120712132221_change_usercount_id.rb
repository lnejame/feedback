class ChangeUsercountId < ActiveRecord::Migration
  def change
    rename_column :companies, :users, :usercount_id
  end
end
