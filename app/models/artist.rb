class Artist < ApplicationRecord
    has_many :albums
    has_many :songs, through: :albums
    enum artist_enum: {
        band: 0,
        duo: 1,
        singer: 2
      }
end
