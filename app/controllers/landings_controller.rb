class LandingsController < ApplicationController
  def index
  	@noticias = Noticia.publicadas
  	@vereadores = Vereador.all
  	@slides = Slide.publicados
  	@notificacao = Notificacao.ultima_publicada
  end


  def institucional
  	@vereadores = Vereador.all.cargo
  end


end
