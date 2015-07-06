class Imagem < ActiveRecord::Base
	mount_uploader :imagem, ImagemUploader

	before_destroy :clean_s3


	private
	  def clean_s3
	    imagem.remove!
	    imagem.thumb.remove! # if you have thumb version or any other version
	    imagem.slide.remove!
	  rescue Excon::Errors::Error => error
	    puts "Something gone wrong"
	  end
	    
end
