json.array!(@noticias) do |noticia|
  json.extract! noticia, :id, :titulo, :introducao, :conteudo, :permalink, :publicado, :imagem, :publicado_em
  json.url noticia_url(noticia, format: :json)
end
