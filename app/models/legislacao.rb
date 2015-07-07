class Legislacao < ActiveRecord::Base
	mount_uploader :arquivo, LeiUploader

	before_destroy :clean_s3

  validates :ano, :ementa, :classificacao, :tipo, :situacao, :arquivo, presence: true
  validates :numero, presence: true,
    numericality: {greater_than: 0}

	def self.anos
  		anos = %w[2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020]
  	end

  	def self.situacoes
  		situacoes = ['Em Vigor','Revogado']
  	end

  	def self.classificacoes
  		classificacoes = ['Saude','Educação', 'Créditos', 'Orçamentário', 'Logradouros Públicos', 'Títulos', 'Utilidade Pública', 'Transporte', 'Outros']
  	end

  	def self.tipos
  		tipos = ['Lei Ordinária','Lei Complementar','Decreto Legislativo', 'Resolução', 'Emenda a Lei Orgânica']
  	end


	private
	  def clean_s3
	    arquivo.remove!
	  rescue Excon::Errors::Error => error
	    puts "Something gone wrong"
	    false
	  end
end
