ActiveAdmin.register Legislacao do
	permit_params :numero, :ano, :ementa, :classificacao, :situacao, :revogado_por, :tipo, :autoria, :arquivo


index do
		column :numero
		column :ano
		column :ementa
		column :classificacao
		column :situacao
		column :revogado_por
		column :tipo
		column :autoria
		actions
	end

	filter :numero
  filter :ano , :as => :select, :collection => Legislacao.anos
  filter :tipo, :as => :select, :collection => Legislacao.tipos
  filter :classificacao, :as => :select, :collection => Legislacao.classificacoes
  filter :situacao, :as => :select, :collection => Legislacao.situacoes
  filter :revogado_por
  filter :ementa
  filter :autoria


  form do |f|
    f.inputs "Inserir Lei" do
      f.input :numero
      f.input :ano, :as => :select, :collection => Legislacao.anos
      f.input :tipo, :as => :select, :collection => Legislacao.tipos
      f.input :classificacao, :as => :select, :collection => Legislacao.classificacoes
      f.input :situacao, :as => :select, :collection => Legislacao.situacoes
      f.input :revogado_por
      f.input :ementa
      f.input :autoria
      f.input :arquivo, :as => :file
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
