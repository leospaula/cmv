class Vereador < ActiveRecord::Base
	mount_uploader :avatar_image_id, ImagemUploader
	
end
