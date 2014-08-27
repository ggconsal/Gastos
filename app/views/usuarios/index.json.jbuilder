json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :usu_nombre, :usu_usuario, :usu_clave
  json.url usuario_url(usuario, format: :json)
end
