class Noticia < ActiveRecord::Base

#  field :titulo
#  field :introducao
#  field :conteudo
#  field :permalink
#  field :publicado
#  field :imagem
#  field :publicado_em


  #mount_uploader :cover, CoverUploader

  belongs_to :admin_user

  validates :titulo, :introducao, :conteudo, presence: true

  #before_create :init
  after_create :build_permalink

  def self.build params
    noticia = new params
   	noticia.imagem = params[:imagem]

    if noticia.valid?
      noticia.save
      noticia
    else
      raise Exceptions::Model.build(noticia)
    end
  end

  def self.publicadas
    where(publicado: true).order('created_at DESC')
  end

  def build_update params
    self.imagem = params[:imagem] if params.key?(:imagem)
    self.update_attributes(params)

    if self.valid?
      self
    else
      raise Exceptions::Model.build(self)
    end
  end

  def init
    self.publicado = false
  end

  def build_permalink
    self.update_attributes(permalink: "#{self.titulo.parameterize}") if self.permalink.blank?
  end

  def publicar!
    self.update_attributes(publicado_em: Time.now, publicado: true)
  end

  def despublicar!
    self.update_attributes(publicado_em: nil, publicado: false)
  end


  def update params
    self.update_attributes(params)
    Excetions::Model.build(noticia) unless self.valid?
  end


  def to_url
    "#{self.permalink}"
  end

end
