class RenameTypeColumnToOrders < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :type, :order_list
  end
end
