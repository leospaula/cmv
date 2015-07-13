class AddColumnToLegislacoes < ActiveRecord::Migration
  def change
  	add_column :legislacoes, :publicacao, :string
  end
end
