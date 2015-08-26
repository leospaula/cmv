class LandingsController < ApplicationController
  def index
  	@noticias = Noticia.publicadas.paginate(page: params[:page], per_page: 4)
  	@vereadores = Vereador.all
  	@slides = Slide.publicados
  	@notificacao = Notificacao.ultima_publicada
  end


  def institucional
  	@vereadores = Vereador.all.cargo
  end

  def regimento
  	
  end

  def tv_camara
    
  end

  def comissoes
    
  end

  def fale_conosco
    
  end

end
