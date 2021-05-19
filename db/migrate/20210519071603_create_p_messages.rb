class CreatePMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :p_messages do |t|
      t.references :placing_order, foreign_key: true
      t.references :p_room, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
