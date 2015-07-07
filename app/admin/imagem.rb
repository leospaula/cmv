ActiveAdmin.register Imagem do
	permit_params :titulo, :imagem

	index do
		column :titulo
		column :created_at
		actions
	end

	filter :titulo




  form do |f|
    f.inputs "Inserir Imagem na Galeria" do
      f.input :titulo
      f.input :imagem, :as => :file
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