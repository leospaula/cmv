class Transparencia < ActiveRecord::Base
	mount_uploader :arquivo, TransparenciaUploader

	before_destroy :clean_s3


	def self.anos
  		anos = %w[2010 2011 2012 2013 2014 2015 2016 2017 2018]
  	end

  	def self.meses
  		meses = %w[Janeiro Fevereiro Marco Abril Maio Junho Julho Agosto Setembro Outubro Novembro Dezembro]
  	end

  	def self.tipos
  		tipos = ['Ordem de Pagamentos','Balancetes','Atas','Empenhos']
  	end

  	private
	  def clean_s3
	    arquivo.remove!
	  rescue Excon::Errors::Error => error
	    puts "Something gone wrong"
	    false
	  end
end
