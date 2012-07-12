require 'test_helper'

class PrefbudgetsControllerTest < ActionController::TestCase
  setup do
    @prefbudget = prefbudgets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prefbudgets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prefbudget" do
    assert_difference('Prefbudget.count') do
      post :create, prefbudget: { name: @prefbudget.name }
    end

    assert_redirected_to prefbudget_path(assigns(:prefbudget))
  end

  test "should show prefbudget" do
    get :show, id: @prefbudget
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prefbudget
    assert_response :success
  end

  test "should update prefbudget" do
    put :update, id: @prefbudget, prefbudget: { name: @prefbudget.name }
    assert_redirected_to prefbudget_path(assigns(:prefbudget))
  end

  test "should destroy prefbudget" do
    assert_difference('Prefbudget.count', -1) do
      delete :destroy, id: @prefbudget
    end

    assert_redirected_to prefbudgets_path
  end
end
