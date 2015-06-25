class LandingsController < ApplicationController
  def index
  	@noticias = Noticia.all
  end

  def galeria	
  end

  def intitucional
  end

  private


end
