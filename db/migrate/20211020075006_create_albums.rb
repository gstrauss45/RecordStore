class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.datetime :release_date
      t.string :genre

      t.timestamps
    end
  end
end
