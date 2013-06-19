class SongsController < ApplicationController
  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
    @song = Song.find(params[:id])
  end

  # GET /songs/new
  # GET /songs/new.json
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
    @song = Song.find(params[:id])
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(params[:song]

    redirect_to roots_path, notice: 'Song was successfully created.'
    render action: "new"

  end

  # PUT /songs/1
  # PUT /songs/1.json
  def update
    @song = Song.find(params[:id])

    redirect_to @song, notice: 'Song was successfully updated.'
    render action: "edit"
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end
end
