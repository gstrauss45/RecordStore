module AlbumsHelper
    def album_select
        Album.all.map {|a| [a.title, a.id]}
    end
end
