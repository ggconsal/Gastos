require 'test_helper'

class FormapagosControllerTest < ActionController::TestCase
  setup do
    @formapago = formapagos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formapagos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formapago" do
    assert_difference('Formapago.count') do
      post :create, formapago: { fpa_desc: @formapago.fpa_desc }
    end

    assert_redirected_to formapago_path(assigns(:formapago))
  end

  test "should show formapago" do
    get :show, id: @formapago
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formapago
    assert_response :success
  end

  test "should update formapago" do
    patch :update, id: @formapago, formapago: { fpa_desc: @formapago.fpa_desc }
    assert_redirected_to formapago_path(assigns(:formapago))
  end

  test "should destroy formapago" do
    assert_difference('Formapago.count', -1) do
      delete :destroy, id: @formapago
    end

    assert_redirected_to formapagos_path
  end
end
