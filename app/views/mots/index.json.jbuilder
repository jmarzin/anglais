json.array!(@mots) do |mot|
  json.extract! mot, :id, :mot_directeur, :francais, :anglais, :prononciation
  json.url mot_url(mot, format: :json)
end
