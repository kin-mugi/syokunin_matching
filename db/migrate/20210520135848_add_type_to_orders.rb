class AddTypeToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :type, :text
  end
end
