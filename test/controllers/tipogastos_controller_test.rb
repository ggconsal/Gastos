require 'test_helper'

class TipogastosControllerTest < ActionController::TestCase
  setup do
    @tipogasto = tipogastos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipogastos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipogasto" do
    assert_difference('Tipogasto.count') do
      post :create, tipogasto: { tga_desc: @tipogasto.tga_desc }
    end

    assert_redirected_to tipogasto_path(assigns(:tipogasto))
  end

  test "should show tipogasto" do
    get :show, id: @tipogasto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipogasto
    assert_response :success
  end

  test "should update tipogasto" do
    patch :update, id: @tipogasto, tipogasto: { tga_desc: @tipogasto.tga_desc }
    assert_redirected_to tipogasto_path(assigns(:tipogasto))
  end

  test "should destroy tipogasto" do
    assert_difference('Tipogasto.count', -1) do
      delete :destroy, id: @tipogasto
    end

    assert_redirected_to tipogastos_path
  end
end
