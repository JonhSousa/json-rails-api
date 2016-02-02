class LugarsController < ApplicationController
  before_action :set_lugar, only: [:show, :update, :destroy]

  # GET /lugars
  # GET /lugars.json
  def index
    @lugars = Lugar.all

    render json: @lugars
  end

  # GET /lugars/1
  # GET /lugars/1.json
  def show
    render json: @lugar
  end

  # POST /lugars
  # POST /lugars.json
  def create
    @lugar = Lugar.new(lugar_params)

    if @lugar.save
      render json: @lugar, status: :created, location: @lugar
    else
      render json: @lugar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lugars/1
  # PATCH/PUT /lugars/1.json
  def update
    @lugar = Lugar.find(params[:id])

    if @lugar.update(lugar_params)
      head :no_content
    else
      render json: @lugar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lugars/1
  # DELETE /lugars/1.json
  def destroy
    @lugar.destroy

    head :no_content
  end

  private

    def set_lugar
      @lugar = Lugar.find(params[:id])
    end

    def lugar_params
      params.require(:lugar).permit(:nome, :latitude, :longitude)
    end
end
