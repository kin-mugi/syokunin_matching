class CreatePlacingOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :placing_orders do |t|
      t.text :topic
      t.text :category
      t.integer :cost_minimum
      t.integer :cost_maximum
      t.text :detail
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :placing_orders, [:user_id, :created_at]
  end
end
