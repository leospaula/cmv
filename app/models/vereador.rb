class Vereador < ActiveRecord::Base
	mount_uploader :imagem, ImagemUploader
	
end
