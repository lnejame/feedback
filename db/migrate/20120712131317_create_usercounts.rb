class CreateUsercounts < ActiveRecord::Migration
  def change
    create_table :usercounts do |t|
      t.string :amount

      t.timestamps
    end
  end
end
