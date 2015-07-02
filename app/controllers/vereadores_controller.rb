class VereadoresController < InheritedResources::Base

	

  private

    def vereador_params
      params.require(:vereador).permit(:nome, :email, :facebook, :twitter, :descricao, :mesa_diretora, :cargo_mesa, :avatar)
    end
end

