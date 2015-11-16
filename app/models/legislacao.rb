class Legislacao < ActiveRecord::Base
	mount_uploader :arquivo, LeiUploader
  mount_uploader :publicacao, LeiUploader

	before_destroy :clean_s3

  validates :ano, :ementa, :classificacao, :tipo, :situacao, :arquivo, presence: true
  validates :numero, presence: true,
    numericality: {greater_than: 0}

	def self.anos
		#anos = %w[2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021 2022 2023 2024 2025 2026 2027 2028 2029 2030]
    legislacoes = Legislacao.select(:ano).all
    @anos_array = []
    legislacoes.each do |legislacao|
      @anos_array << legislacao.ano
    end
    anos = @anos_array.uniq.sort
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
      publicacao.remove!
	  rescue Excon::Errors::Error => error
	    puts "Something gone wrong"
	    false
	  end
end
