json.array!(@movimientos) do |movimiento|
  json.extract! movimiento, :id, :mov_fecha, :mov_importe, :mov_obs, :mov_lote, :subrubro_id, :tipogasto_id, :tipomov_id, :formapago_id, :usuario_id
  json.url movimiento_url(movimiento, format: :json)
end
