class AddStatusToBike < ActiveRecord::Migration[6.1]
  def change
    add_column :bikes, :status, :integer, default: 1
  end
end
