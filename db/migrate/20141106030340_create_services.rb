class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :slot_id
      t.string :description
      t.timestamps
    end
  end
end
