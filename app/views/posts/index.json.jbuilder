json.array!(@posts) do |post|
  json.extract! post, :id, :title, :slug, :content_md, :content_html, :draft, :user_id
  json.url post_url(post, format: :json)
end
