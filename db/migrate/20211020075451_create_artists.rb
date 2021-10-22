class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :type
      t.string :debut_year

      t.timestamps
    end
  end
end
