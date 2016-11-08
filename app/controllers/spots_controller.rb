class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :update, :destroy]

  # GET /spots
  # GET /spots.json
  def index
    @spots = Spot.all

    render json: @spots
  end

  # GET /spots/1
  # GET /spots/1.json
  def show
    render json: @spot
  end

  # POST /spots
  # POST /spots.json
  def create
    @spot = Spot.new(spot_params)

    if @spot.save
      render json: @spot, status: :created, location: @spot
    else
      render json: @spot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spots/1
  # PATCH/PUT /spots/1.json
  def update
    @spot = Spot.find(params[:id])

    if @spot.update(spot_params)
      head :no_content
    else
      render json: @spot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spots/1
  # DELETE /spots/1.json
  def destroy
    @spot.destroy

    head :no_content
  end

  private

    def set_spot
      @spot = Spot.find(params[:id])
    end

    def spot_params
      params.require(:spot).permit(:name, :address, :city, :state, :zip, :description)
    end
end
