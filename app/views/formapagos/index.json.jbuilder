json.array!(@formapagos) do |formapago|
  json.extract! formapago, :id, :fpa_desc
  json.url formapago_url(formapago, format: :json)
end
