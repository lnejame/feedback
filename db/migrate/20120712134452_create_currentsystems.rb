class CreateCurrentsystems < ActiveRecord::Migration
  def change
    create_table :currentsystems do |t|
      t.string :name

      t.timestamps
    end
  end
end
