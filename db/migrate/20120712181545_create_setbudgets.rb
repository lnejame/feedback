class CreateSetbudgets < ActiveRecord::Migration
  def change
    create_table :setbudgets do |t|
      t.string :name

      t.timestamps
    end
  end
end
