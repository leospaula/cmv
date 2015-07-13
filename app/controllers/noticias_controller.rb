class NoticiasController < InheritedResources::Base

	def index
    	@noticias = Noticia.all.publicadas.paginate(page: params[:page], per_page: 5)
  	end

	def show
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

