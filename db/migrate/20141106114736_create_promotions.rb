class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.integer :slot_id
      t.string :description
      t.timestamps
    end
  end
end
