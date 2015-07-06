class LandingsController < ApplicationController
  def index
  	@noticias = Noticia.all.publicadas
  	@vereadores = Vereador.all
  	@slides = Slide.all.publicados
  end


  def institucional
  	@vereadores = Vereador.all.cargo
  end


end
