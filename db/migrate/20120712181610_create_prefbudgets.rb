class CreatePrefbudgets < ActiveRecord::Migration
  def change
    create_table :prefbudgets do |t|
      t.string :name

      t.timestamps
    end
  end
end
