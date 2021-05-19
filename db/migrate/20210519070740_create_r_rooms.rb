class CreateRRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :r_rooms do |t|

      t.timestamps
    end
  end
end
