class VotosController < ApplicationController
  before_action :set_voto, only: [:show, :update, :destroy]

  # GET /votos
  # GET /votos.json
  def index
    @votos = Voto.all

    render json: @votos
  end

  # GET /votos/1
  # GET /votos/1.json
  def show
    render json: @voto
  end

  # POST /votos
  # POST /votos.json
  def create
    @voto = Voto.new(voto_params)

    if @voto.save
      render json: @voto, status: :created, location: @voto
    else
      render json: @voto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /votos/1
  # PATCH/PUT /votos/1.json
  def update
    @voto = Voto.find(params[:id])

    if @voto.update(voto_params)
      head :no_content
    else
      render json: @voto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /votos/1
  # DELETE /votos/1.json
  def destroy
    @voto.destroy

    head :no_content
  end

  private

    def set_voto
      @voto = Voto.find(params[:id])
    end

    def voto_params
      params.require(:voto).permit(:lugar_id)
    end
end
