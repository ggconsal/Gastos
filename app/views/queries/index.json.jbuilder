json.array!(@queries) do |query|
  json.extract! query, :id, :con_fechad, :con_fechah, :con_descripcion, :user_id
  json.url query_url(query, format: :json)
end
