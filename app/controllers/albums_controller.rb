class AlbumsController < ApplicationController
  # GET /albums
  # GET /albums.json
  def index
    @album = Album.all
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = Album.find(params[:id])
  end

  # GET /albums/new
  # GET /albums/new.json
  def new
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
    @album = Album.find(params[:id])
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(params[:album])

      if @album.save
        redirect_to @album, notice: 'Album was successfully created.'
      else
        render action: "new"
      end
    end
  end

  # PUT /albums/1
  # PUT /albums/1.json
  def update
    @album = Album.find(params[:id])
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album = Album.find(params[:id])
    @album.destroy


    redirect_to albums_url
  end
end
