json.array!(@tipomovs) do |tipomov|
  json.extract! tipomov, :id, :tmo_desc
  json.url tipomov_url(tipomov, format: :json)
end
