require 'test_helper'

class SubrubrosControllerTest < ActionController::TestCase
  setup do
    @subrubro = subrubros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subrubros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subrubro" do
    assert_difference('Subrubro.count') do
      post :create, subrubro: { rubro_id: @subrubro.rubro_id, sru_desc: @subrubro.sru_desc }
    end

    assert_redirected_to subrubro_path(assigns(:subrubro))
  end

  test "should show subrubro" do
    get :show, id: @subrubro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subrubro
    assert_response :success
  end

  test "should update subrubro" do
    patch :update, id: @subrubro, subrubro: { rubro_id: @subrubro.rubro_id, sru_desc: @subrubro.sru_desc }
    assert_redirected_to subrubro_path(assigns(:subrubro))
  end

  test "should destroy subrubro" do
    assert_difference('Subrubro.count', -1) do
      delete :destroy, id: @subrubro
    end

    assert_redirected_to subrubros_path
  end
end
