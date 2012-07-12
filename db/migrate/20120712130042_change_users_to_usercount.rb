class ChangeUsersToUsercount < ActiveRecord::Migration
  def change
    rename_table :users, :usercount
  end
end
