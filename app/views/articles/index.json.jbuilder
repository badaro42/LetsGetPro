json.array!(@articles) do |article|
  json.extract! article, :id, :user_id, :text, :image, :link, :published
  json.url article_url(article, format: :json)
end
