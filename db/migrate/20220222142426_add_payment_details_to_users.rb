class AddPaymentDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :payment_details, :string
  end
end
