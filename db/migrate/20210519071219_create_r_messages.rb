class CreateRMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :r_messages do |t|
      t.references :recieving_order, foreign_key: true
      t.references :r_room, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
