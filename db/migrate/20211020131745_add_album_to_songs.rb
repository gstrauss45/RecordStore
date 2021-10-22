class AddAlbumToSongs < ActiveRecord::Migration[6.1]
  def change
    add_reference :songs, :album, foreign_key: true
  end
end
