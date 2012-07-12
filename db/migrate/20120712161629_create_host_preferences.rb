class CreateHostPreferences < ActiveRecord::Migration
  def change
    create_table :host_preferences do |t|
      t.string :name

      t.timestamps
    end
  end
end
