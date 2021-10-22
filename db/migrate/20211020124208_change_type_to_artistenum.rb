class ChangeTypeToArtistenum < ActiveRecord::Migration[6.1]
  def change
    rename_column :artists, :type, :artist_enum
  end
end
