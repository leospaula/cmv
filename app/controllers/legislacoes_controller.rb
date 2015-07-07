class LegislacoesController < ApplicationController
  before_action :set_legislacao, only: [:show, :edit, :update, :destroy]

  # GET /legislacoes
  # GET /legislacoes.json
  def index
    @legislacoes = Legislacao.all.paginate(page: params[:page], per_page: 10)
  end

  def search
    @legislacoes = Legislacao.all
    
    @legislacoes = @legislacoes.where(numero: params[:numero].to_i) unless params[:numero].blank?

    @legislacoes = @legislacoes.where(ano: params[:ano].to_i) unless params[:ano].blank?

    @legislacoes = @legislacoes.where(classificacao: params[:classificacao]) unless params[:classificacao].blank?

    @legislacoes = @legislacoes.where(tipo: params[:tipo]) unless params[:tipo].blank?

    @legislacoes = @legislacoes.where(situacao: params[:situacao]) unless params[:situacao].blank?
    
    if !params[:ementa][0].blank?
      ementa_search = params[:ementa][0]
      @legislacoes = @legislacoes.where("ementa ILIKE ?", "%#{ementa_search}%")
    end

    @legislacoes = @legislacoes.paginate(page: params[:page], per_page: 10)
  end

  # GET /legislacoes/1
  # GET /legislacoes/1.json
  def show
  end

  # GET /legislacoes/new
  def new
    @legislacao = Legislacao.new
  end

  # GET /legislacoes/1/edit
  def edit
  end

  # POST /legislacoes
  # POST /legislacoes.json
  def create
    @legislacao = Legislacao.new(legislacao_params)

    respond_to do |format|
      if @legislacao.save
        format.html { redirect_to @legislacao, notice: 'Legislacao was successfully created.' }
        format.json { render :show, status: :created, location: @legislacao }
      else
        format.html { render :new }
        format.json { render json: @legislacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legislacoes/1
  # PATCH/PUT /legislacoes/1.json
  def update
    respond_to do |format|
      if @legislacao.update(legislacao_params)
        format.html { redirect_to @legislacao, notice: 'Legislacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @legislacao }
      else
        format.html { render :edit }
        format.json { render json: @legislacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legislacoes/1
  # DELETE /legislacoes/1.json
  def destroy
    @legislacao.destroy
    respond_to do |format|
      format.html { redirect_to legislacoes_url, notice: 'Legislacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legislacao
      @legislacao = Legislacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legislacao_params
      params.require(:legislacao).permit(:numero, :ano, :ementa, :classificacao, :situacao, :tipo, :autoria, :arquivo)
    end
end
