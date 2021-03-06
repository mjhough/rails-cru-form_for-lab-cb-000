class SongsController < ApplicationController
    include ApplicationHelper

    def index
        @songs = Song.all
    end
    
    def show
        @song = Song.find(params[:id])
    end

    def new 
        @song = Song.new
    end

    def create
        song = Song.create(strong_params(:name, :artist_id, :genre_id))
        redirect_to song_path(song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        song = Song.find(params[:id])
        song.update(strong_params(:name, :artist_id, :genre_id))
        redirect_to song_path(song)
    end
end
