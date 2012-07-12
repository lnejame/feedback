class ChangeAmountColumnInUsercount < ActiveRecord::Migration
  def change
    rename_column :usercount, :amount, :name
  end
end
