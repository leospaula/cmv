class TransparenciasController < InheritedResources::Base

	def index

		@transparencias = Transparencia.all

		@transparencias = @transparencias.where(ano: params[:ano].to_i) unless params[:ano].blank?

		@transparencias = @transparencias.where(mes: params[:mes]) unless params[:mes].blank?

		@transparencias = @transparencias.where(tipo: params[:tipo]) unless params[:tipo].blank?

		@transparencias = @transparencias.paginate(page: params[:page], per_page: 2)

	end

	def download_file
  	@transparencia = Transparencia.find(params[:transparencia_id])
  	upload = TransparenciaUploader.new
  	upload.download!(@transparencia.arquivo_url)
  	send_file(upload.identifier,
        :type => 'application/pdf',
        :disposition => 'attachment',
        :url_based_filename => true)
  end

  private

    def transparencia_params
      params.require(:transparencia).permit(:ano, :mes, :tipo, :arquivo)
    end
end

