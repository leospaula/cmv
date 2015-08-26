class AddColumnToTransparencias < ActiveRecord::Migration
  def change
  	add_column :transparencias, :info, :string
  end
end
