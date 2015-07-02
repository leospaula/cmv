class Vereador < ActiveRecord::Base
	mount_uploader :avatar, ImagemUploader

	before_destroy :clean_s3



	private
	  def clean_s3
	    avatar.remove!
	    avatar.thumb.remove! # if you have thumb version or any other version
	  rescue Excon::Errors::Error => error
	    puts "Something gone wrong"
	    false
	  end
	
end
