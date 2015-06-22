class VereadoresController < InheritedResources::Base

	# GET /vereadores/new
	def new
	  @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
	  @vereador = Vereador.new
	end

  private

    def vereador_params
      params.require(:vereador).permit(:nome, :email, :facebook, :twitter, :descricao, :mesa_diretora, :cargo_mesa, :avatar_image_id)
    end
end

