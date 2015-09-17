json.array!(@anime_details) do |anime_detail|
  json.extract! anime_detail, :id, :anime_title_id, :profile, :op_title, :op_artist, :op_movie, :ed_title, :ed_artist, :ed_movie
  json.url anime_detail_url(anime_detail, format: :json)
end
