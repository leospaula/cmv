class GaleriaController < ApplicationController
  before_action :set_imagem, only: [:show, :edit, :update, :destroy]

  # GET /galeria
  # GET /galeria.json
  def index
    @galeria = Imagem.all
  end

  # GET /galeria/1
  # GET /galeria/1.json
  def show
  end

  # GET /galeria/new
  def new
    @imagem = Imagem.new
  end

  # GET /galeria/1/edit
  def edit
  end

  # POST /galeria
  # POST /galeria.json
  def create
    @imagem = Imagem.new(imagem_params)

    respond_to do |format|
      if @imagem.save
        format.html { redirect_to @imagem, notice: 'Imagem was successfully created.' }
        format.json { render :show, status: :created, location: @imagem }
      else
        format.html { render :new }
        format.json { render json: @imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeria/1
  # PATCH/PUT /galeria/1.json
  def update
    respond_to do |format|
      if @imagem.update(imagem_params)
        format.html { redirect_to @imagem, notice: 'Imagem was successfully updated.' }
        format.json { render :show, status: :ok, location: @imagem }
      else
        format.html { render :edit }
        format.json { render json: @imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeria/1
  # DELETE /galeria/1.json
  def destroy
    @imagem.destroy
    respond_to do |format|
      format.html { redirect_to galeria_url, notice: 'Imagem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagem
      @imagem = Imagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagem_params
      params[:imagem]
    end
end
