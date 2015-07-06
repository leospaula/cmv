class AddRevogadoPorToLegislacoes < ActiveRecord::Migration
  def change
  	add_column :legislacoes, :revogado_por, :integer
  end
end
