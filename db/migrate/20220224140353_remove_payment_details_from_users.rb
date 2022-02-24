class RemovePaymentDetailsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :payment_details
  end
end
