ActiveAdmin.register Notificacao do
	permit_params :titulo, :conteudo, :publicado

	index do
		column :titulo
		column :conteudo
		column :publicado
		column :created_at
		actions
	end

	filter :titulo
	filter :publicado


  form do |f|
    f.inputs "Inserir Notificação na Pagina Inicial" do
      f.input :titulo
      f.input :conteudo
      f.input :publicado
    end
    f.actions
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
