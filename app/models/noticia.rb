class Noticia < ActiveRecord::Base

#  field :titulo
#  field :introducao
#  field :conteudo
#  field :permalink
#  field :publicado
#  field :imagem
#  field :publicado_em



  validates :titulo, :conteudo, presence: true

  #before_create :init
  after_create :build_permalink

  before_create :verify_publicado
  before_update :verify_publicado


  

  def self.build params
    noticia = new params

    if noticia.valid?
      noticia.save
      noticia
    else
      raise Exceptions::Model.build(noticia)
    end
  end

  def self.publicadas
    all.where(publicado: true).order('created_at DESC')
  end

  def build_update params
    self.update_attributes(params)
 

    if self.valid?
      self
    else
      raise Exceptions::Model.build(self)
    end
  end


  def build_permalink
    self.update_attributes(permalink: "#{self.titulo.parameterize}") if self.permalink.blank?
  end

  def verify_publicado
    if (self.publicado? && self.publicado_em.blank?)
      self.update_attributes(publicado_em: Time.now)
    end

    if ( !self.publicado? && !self.publicado_em.blank?)
      self.update_attributes(publicado_em: nil)
    end
  end


  def update params
    self.update_attributes(params)

    Excetions::Model.build(noticia) unless self.valid?
  end


  def to_url
    "#{self.permalink}"
  end

end
