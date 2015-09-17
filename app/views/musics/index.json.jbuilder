json.array!(@musics) do |music|
  json.extract! music, :id, :genre, :title, :jacket, :album, :publish, :published, :youtube
  json.url music_url(music, format: :json)
end
