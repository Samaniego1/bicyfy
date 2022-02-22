class CreateShoppingCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_carts do |t|
      t.integer :order_count
      t.integer :total_amount
      t.string :status
      t.timestamps
    end
  end
end
