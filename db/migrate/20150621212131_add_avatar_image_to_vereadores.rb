class AddAvatarImageToVereadores < ActiveRecord::Migration
  def change
    add_column :vereadores, :avatar_image_id, :string
  end
end
