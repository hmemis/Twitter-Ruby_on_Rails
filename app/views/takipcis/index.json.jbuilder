json.array!(@takipcis) do |takipci|
  json.extract! takipci, :id, :ad, :soyad
  json.url takipci_url(takipci, format: :json)
end
