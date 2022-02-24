class RemoveDateCreatedFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :date_created
  end
end
