class AddReleaseDateToAlbums < ActiveRecord::Migration[6.1]
  def change
    change_column :albums, :release_date, :datetime
  end
end
