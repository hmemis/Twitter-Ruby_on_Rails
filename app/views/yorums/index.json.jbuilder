json.array!(@yorums) do |yorum|
  json.extract! yorum, :id, :yorum
  json.url yorum_url(yorum, format: :json)
end
