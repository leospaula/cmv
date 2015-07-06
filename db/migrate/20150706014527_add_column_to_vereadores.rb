class AddColumnToVereadores < ActiveRecord::Migration
  def change
  	add_column :vereadores, :site, :string
  	add_column :vereadores, :partido, :string
  	add_column :vereadores, :telefone, :string
  end
end
