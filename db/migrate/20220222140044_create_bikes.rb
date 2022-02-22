class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.string :photo
      t.string :brand
      t.string :model
      t.string :details
      t.string :category
      t.integer :wheel_size
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
