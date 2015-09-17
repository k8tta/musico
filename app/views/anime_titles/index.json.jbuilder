json.array!(@anime_titles) do |anime_title|
  json.extract! anime_title, :id, :title, :icon_url, :icon
  json.url anime_title_url(anime_title, format: :json)
end
