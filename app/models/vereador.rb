class Vereador < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader

	before_destroy :clean_s3

	validates :nome, :email, :descricao, :situacao, :tipo, :arquivo, presence: true

	def self.cargos
  		tipos = ['Presidente','Vice-Presidente','1º Secretario','2º Secretario']
  end

  def self.cargo
    where(mesa_diretora: true)
  end

  def self.cargo_ocupado
  	self.cargo_mesa
  end


	private
	  def clean_s3
	    avatar.remove!
	    avatar.thumb.remove! # if you have thumb version or any other version
	    avatar.mini.remove!
	  rescue Excon::Errors::Error => error
	    puts "Something gone wrong"
	    false
	  end
	
end
