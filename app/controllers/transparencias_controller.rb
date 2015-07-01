class TransparenciasController < InheritedResources::Base

	def index

		@transparencias = Transparencia.all

		@transparencias = @transparencias.where(ano: params[:ano].to_i) unless params[:ano].blank?

		@transparencias = @transparencias.where(mes: params[:mes]) unless params[:mes].blank?

		@transparencias = @transparencias.where(tipo: params[:tipo]) unless params[:tipo].blank?

	end

  private

    def transparencia_params
      params.require(:transparencia).permit(:ano, :mes, :tipo, :arquivo)
    end
end

