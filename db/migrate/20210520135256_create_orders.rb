class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.text :topic
      t.integer :cost_minimum
      t.integer :cost_maximum
      t.text :detail

      t.timestamps
    end
  end
end
