json.array!(@transparencias) do |transparencia|
  json.extract! transparencia, :id, :ano, :mes, :tipo, :arquivo
  json.url transparencia_url(transparencia, format: :json)
end
