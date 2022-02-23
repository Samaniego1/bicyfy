class RemovePhotoFromBikes < ActiveRecord::Migration[6.1]
  def change
    remove_column :bikes, :photo
  end
end
