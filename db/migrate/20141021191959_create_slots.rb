class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.string :name
      t.string :opentimes
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
