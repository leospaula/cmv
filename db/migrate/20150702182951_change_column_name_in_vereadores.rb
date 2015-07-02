class ChangeColumnNameInVereadores < ActiveRecord::Migration
  def change
  	rename_column :vereadores, :avatar_image_id, :avatar
  end
end
