json.array!(@tipogastos) do |tipogasto|
  json.extract! tipogasto, :id, :tga_desc
  json.url tipogasto_url(tipogasto, format: :json)
end
