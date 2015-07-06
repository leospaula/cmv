ActiveAdmin.register Noticia do
	permit_params :titulo, :introducao, :conteudo, :publicado, :publicado_em

	index do
		column :titulo
		column :introducao
		column :publicado
		column :publicado_em
		actions
	end

	filter :titulo
  filter :introducao
  filter :conteudo
  filter :publicado


	form do |f|
    f.inputs "Criar notícia" do
      f.input :titulo
      f.input :introducao
      f.input :conteudo, :as => :ckeditor
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
