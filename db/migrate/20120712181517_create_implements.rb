class CreateImplements < ActiveRecord::Migration
  def change
    create_table :implements do |t|
      t.string :name

      t.timestamps
    end
  end
end
