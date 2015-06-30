class Transparencia < ActiveRecord::Base
	def self.anos
  		anos = %w[2010 2011 2012 2013 2014 2015 2016 2017 2018]
  	end

  	def self.meses
  		meses = %w[Janeiro Fevereiro Marco Abril Maio Junho Julho Agosto Setembro Outubro Novembro Dezembro]
  	end

  	def self.tipos
  		tipos = ['Ordem de Pagamentos','Balancetes','Atas','Empenhos']
  	end
end
