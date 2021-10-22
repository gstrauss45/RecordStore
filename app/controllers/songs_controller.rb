class SongsController < ApplicationController
    def index
    end

    def new
        @song = Song.new
        @artists = Artist.all
        @albums = Album.all
    end

    def create
      @song = Song.create(song_params)
      redirect_to root_path
    end

    def show
        @song = Song.find(params[:id])
    end

    def update
        @song = song.find(params[:id])

        if @song.update(song_params)
          redirect_to @song
        else
          render :edit
        end
    end

    def destroy
        @song = song.find(params[:id])
        @song.destroy
        redirect_to root_path
    end

    def edit
        @song = song.find(params[:id])
    end

    private
    def song_params
      params.require(:song).permit(:title, :duration, :album_id, :hit_song)
    end
end
