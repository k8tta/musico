json.array!(@reviews) do |review|
  json.extract! review, :id, :music_id, :user_id, :body
  json.url review_url(review, format: :json)
end
