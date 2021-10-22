class AlbumsController < ApplicationController
    def index
    end

    def new
        @album = Album.new
        @artists = Artist.all
    end

    def genre
        @albums = Album.where(genre: params[:param1])
    end

    def create
        @album =  Album.create(album_params)
        redirect_to @album
    end

    def show
        @album = Album.find(params[:id])
        @year = @album.release_date.year
    end

    def update
        @album = Album.find(params[:id])

        if @album.update(album_params)
          redirect_to @album
        else
          render :edit
        end
    end

    def destroy
        @album = Album.find(params[:id])
        @album.destroy
        redirect_to root_path
    end

    def edit
        @album = Album.find(params[:id])
    end

    def year
        @albums = Album.where(release_date: DateTime.parse("#{DateTime.strptime(params[:param1], "%Y").year}-01-01")..DateTime.parse("#{DateTime.strptime(params[:param1], "%Y").year}-12-31"))
    end

    private
    def album_params
      params.require(:album).permit(:title, :release_date, :genre, :artist_id)
    end
end
