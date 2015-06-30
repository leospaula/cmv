class TransparenciasController < InheritedResources::Base

	def index
		@transparencias = Transparencia.all

		if (params[:ano] != nil || params[:ano] != 0 || params[:ano] != "")
			@transparencias = @transparencias.where(ano: params[:ano].to_i)
		end
		if (params[:mes] != nil || params[:ano] != "")
			@transparencias = @transparencias.where(mes: params[:mes])
		end
		if (params[:tipo] != nil || params[:ano] != "")
			@transparencias = @transparencias.where(tipo: params[:tipo])
		end
	end

  private

    def transparencia_params
      params.require(:transparencia).permit(:ano, :mes, :tipo, :arquivo)
    end
end

