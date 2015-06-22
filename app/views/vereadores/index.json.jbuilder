json.array!(@vereadores) do |vereador|
  json.extract! vereador, :id, :nome, :email, :facebook, :twitter, :descricao, :mesa_diretora, :cargo_mesa
  json.url vereador_url(vereador, format: :json)
end
