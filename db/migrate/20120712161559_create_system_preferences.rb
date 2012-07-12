class CreateSystemPreferences < ActiveRecord::Migration
  def change
    create_table :system_preferences do |t|
      t.string :name

      t.timestamps
    end
  end
end
