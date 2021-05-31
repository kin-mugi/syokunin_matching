class AddCategoryToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :category, :text
  end
end
