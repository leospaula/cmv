json.array!(@galeria) do |imagem|
  json.extract! imagem, :id
  json.url imagem_url(imagem, format: :json)
end
