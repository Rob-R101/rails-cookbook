class RemovePhotoFromBookmarks < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookmarks, :photo, :string
  end
end
