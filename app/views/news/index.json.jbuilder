json.array!(@news) do |news|
  json.extract! news, :id, :author, :summary, :published, :agency, :link, :tags, :title
  json.url news_url(news, format: :json)
end
