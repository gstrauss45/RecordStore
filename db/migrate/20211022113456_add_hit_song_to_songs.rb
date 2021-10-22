class AddHitSongToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :hit_song, :boolean, default: false
  end
end
