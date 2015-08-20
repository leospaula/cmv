class Transparencia < ActiveRecord::Base
	mount_uploader :arquivo, TransparenciaUploader

	before_destroy :clean_s3

	validates :ano, :mes, :tipo, :arquivo, presence: true
	validates :mes, uniqueness: { scope: [:ano, :tipo] }


	def self.anos
  		anos = %w[1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018]
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
