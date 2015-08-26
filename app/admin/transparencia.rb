ActiveAdmin.register Transparencia do
	permit_params :ano, :mes, :tipo, :arquivo, :info

index do
		column :ano
		column :mes
		column :tipo
    column :info
		actions
	end

  filter :ano , :as => :select, :collection => Transparencia.anos
  filter :mes , :as => :select, :collection => Transparencia.meses
  filter :tipo, :as => :select, :collection => Transparencia.tipos
  filter :info


  form do |f|
    f.inputs "Inserir" do
      f.input :ano, :as => :select, :collection => Transparencia.anos
      f.input :mes, :as => :select, :collection => Transparencia.meses
      f.input :tipo, :as => :select, :collection => Transparencia.tipos
      f.input :info
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
