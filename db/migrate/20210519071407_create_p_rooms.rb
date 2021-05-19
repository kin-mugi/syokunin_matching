class CreatePRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :p_rooms do |t|

      t.timestamps
    end
  end
end
