class RemoveColumnPhotoAlbumLikes < ActiveRecord::Migration[6.0]
  def change
    remove_column :likes, :album_id
    remove_column :likes, :photo_id
  end
end
