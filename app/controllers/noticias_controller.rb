class NoticiasController < InheritedResources::Base

	def index
    	@noticias = Noticia.all.publicadas.limit(4)
    	@noticiastitle = Noticia.all.publicadas.limit(6)
  	end

	def show
		@noticiastitle = Noticia.all.publicadas.limit(6)
    	@noticia = Noticia.find_by(permalink: params[:id])
  	end

  	def create
	    begin
	      Noticia.build(noticia_params)
	      redirect_to noticias_path
	    rescue => exception
	      @error = exception.error

	      respond_to do |format|
	        format.html { render action: :new }
	      end
	    end
  	end

  private

    def noticia_params
      params.require(:noticia).permit(:titulo, :introducao, :conteudo, :permalink, :publicado, :imagem, :publicado_em)
    end
end

