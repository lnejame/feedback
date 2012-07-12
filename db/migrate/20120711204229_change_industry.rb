class ChangeIndustry < ActiveRecord::Migration
  def up
    change_table :companies do |t|
      t.string :industry_id
    end
  end

  def down
    remove_column :companies, :industry
  end
end
