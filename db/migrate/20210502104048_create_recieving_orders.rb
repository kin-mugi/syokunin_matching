class CreateRecievingOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :recieving_orders do |t|
      t.text :topic
      t.text :category
      t.integer :cost_minimum
      t.integer :cost_maximum
      t.text :detail
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
