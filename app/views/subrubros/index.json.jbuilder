json.array!(@subrubros) do |subrubro|
  json.extract! subrubro, :id, :sru_desc, :rubro_id
  json.url subrubro_url(subrubro, format: :json)
end
