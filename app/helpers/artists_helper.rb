module ArtistsHelper
    def artist_select
        Artist.all.map {|a| [a.name, a.id]}
    end
end
