json.array!(@articles) do |article|
  json.extract! article, :id, :title, :introduction, :body, :permalink, :status, :cover, :published_in
  json.url article_url(article, format: :json)
end
