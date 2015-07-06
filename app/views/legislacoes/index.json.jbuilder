json.array!(@legislacoes) do |legislacao|
  json.extract! legislacao, :id, :numero, :ano, :ementa, :classificacao, :situacao, :tipo, :autoria
  json.url legislacao_url(legislacao, format: :json)
end
