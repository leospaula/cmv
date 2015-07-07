class Notificacao < ActiveRecord::Base

	validates :titulo, :conteudo, presence: true


  def self.ultima_publicada
  	all.where(publicado: true).order('created_at DESC').limit(1)
  end
end
