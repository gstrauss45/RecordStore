class ArtistsController < ApplicationController
    def index
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)

        if @artist.save
          redirect_to @artist
        else
          render :new
        end
    end

    def show
        @artist = Artist.find(params[:id])
        @albums = Album.where(artist_id: @artist).order('release_date DESC')
        @albums = title_and_duration_date(@albums)
        @hit_songs = Song.where(hit_song: 'true')
    end

    def update
        @artist = Artist.find(params[:id])

        if @artist.update(artist_params)
          redirect_to @artist
        else
          render :edit
        end
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
        redirect_to root_path
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    private
    def artist_params
      params.require(:artist).permit(:name, :artist_enum, :debut_year)
    end

    def title_and_duration_date(albums)
        albums.map {|a| [a.title, a.songs.pluck(:duration).sum, a.release_date]}
    end
end
