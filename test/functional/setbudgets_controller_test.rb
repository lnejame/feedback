require 'test_helper'

class SetbudgetsControllerTest < ActionController::TestCase
  setup do
    @setbudget = setbudgets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:setbudgets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create setbudget" do
    assert_difference('Setbudget.count') do
      post :create, setbudget: { name: @setbudget.name }
    end

    assert_redirected_to setbudget_path(assigns(:setbudget))
  end

  test "should show setbudget" do
    get :show, id: @setbudget
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @setbudget
    assert_response :success
  end

  test "should update setbudget" do
    put :update, id: @setbudget, setbudget: { name: @setbudget.name }
    assert_redirected_to setbudget_path(assigns(:setbudget))
  end

  test "should destroy setbudget" do
    assert_difference('Setbudget.count', -1) do
      delete :destroy, id: @setbudget
    end

    assert_redirected_to setbudgets_path
  end
end
