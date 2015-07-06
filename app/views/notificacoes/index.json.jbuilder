json.array!(@notificacoes) do |notificacao|
  json.extract! notificacao, :id
  json.url notificacao_url(notificacao, format: :json)
end
