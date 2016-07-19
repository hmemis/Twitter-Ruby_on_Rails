json.array!(@users) do |user|
  json.extract! user, :id, :ad, :soyad, :adres, :email, :telefon, :username, :password
  json.url user_url(user, format: :json)
end
