class AddCardInfoToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :card_number, :string
    add_column :orders, :full_name, :string
    add_column :orders, :exp_month, :integer
    add_column :orders, :exp_year, :integer
    add_column :orders, :cvv, :integer
  end
end
