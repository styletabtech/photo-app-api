class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all

    render json: @photos
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    render json: @photo
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      render json: @photo, status: :created, location: @photo
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      head :no_content
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy

    head :no_content
  end

  private

    def set_photo
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:spot_id, :upload_id)
    end
end
