require 'test_helper'

class MovimientosControllerTest < ActionController::TestCase
  setup do
    @movimiento = movimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movimiento" do
    assert_difference('Movimiento.count') do
      post :create, movimiento: { formapago_id: @movimiento.formapago_id, mov_fecha: @movimiento.mov_fecha, mov_importe: @movimiento.mov_importe, mov_lote: @movimiento.mov_lote, mov_obs: @movimiento.mov_obs, subrubro_id: @movimiento.subrubro_id, tipogasto_id: @movimiento.tipogasto_id, tipomov_id: @movimiento.tipomov_id, usuario_id: @movimiento.usuario_id }
    end

    assert_redirected_to movimiento_path(assigns(:movimiento))
  end

  test "should show movimiento" do
    get :show, id: @movimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movimiento
    assert_response :success
  end

  test "should update movimiento" do
    patch :update, id: @movimiento, movimiento: { formapago_id: @movimiento.formapago_id, mov_fecha: @movimiento.mov_fecha, mov_importe: @movimiento.mov_importe, mov_lote: @movimiento.mov_lote, mov_obs: @movimiento.mov_obs, subrubro_id: @movimiento.subrubro_id, tipogasto_id: @movimiento.tipogasto_id, tipomov_id: @movimiento.tipomov_id, usuario_id: @movimiento.usuario_id }
    assert_redirected_to movimiento_path(assigns(:movimiento))
  end

  test "should destroy movimiento" do
    assert_difference('Movimiento.count', -1) do
      delete :destroy, id: @movimiento
    end

    assert_redirected_to movimientos_path
  end
end
