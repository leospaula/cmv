ActiveAdmin.register Event, as: "Eventos" do
	permit_params :title, :description, :start_time, :end_time

index do
		column :title
		column :description
		column :start_time
		column :end_time
		actions
	end

	filter :title
  filter :description
  filter :start_time
  filter :end_time


  form do |f|
    f.inputs "Inserir Evento" do
      f.input :title
      f.input :description
      f.input :start_time
      f.input :end_time
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
