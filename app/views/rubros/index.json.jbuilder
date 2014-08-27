json.array!(@rubros) do |rubro|
  json.extract! rubro, :id, :rub_desc, :rub_suma
  json.url rubro_url(rubro, format: :json)
end
