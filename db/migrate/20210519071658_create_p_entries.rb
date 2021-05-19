class CreatePEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :p_entries do |t|
      t.references :placing_order, foreign_key: true
      t.references :p_room, foreign_key: true

      t.timestamps
    end
  end
end
