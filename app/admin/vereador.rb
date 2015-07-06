ActiveAdmin.register Vereador do
	permit_params :nome, :partido, :site, :telefone, :email, :facebook, :twitter, :descricao, :mesa_diretora, :cargo_mesa, :avatar

	index do
		column :nome
    column :partido
		column :email
		column :facebook
		column :twitter
    column :site
    column :telefone
		column :mesa_diretora
		column :cargo_mesa
		actions
	end

	filter :nome
  filter :partido
  filter :mesa_diretora
  filter :cargo_mesa



  form do |f|
    f.inputs "Inserir Vereador" do
      f.input :nome
      f.input :partido
      f.input :email
      f.input :telefone
      f.input :site
      f.input :facebook
      f.input :twitter
      f.input :descricao
      f.input :mesa_diretora
      f.input :cargo_mesa,:as => :select, :collection => Vereador.cargos
      f.input :avatar, :as => :file
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
