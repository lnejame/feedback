require 'test_helper'

class UsercountsControllerTest < ActionController::TestCase
  setup do
    @usercount = usercounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usercounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usercount" do
    assert_difference('Usercount.count') do
      post :create, usercount: { amount: @usercount.amount }
    end

    assert_redirected_to usercount_path(assigns(:usercount))
  end

  test "should show usercount" do
    get :show, id: @usercount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usercount
    assert_response :success
  end

  test "should update usercount" do
    put :update, id: @usercount, usercount: { amount: @usercount.amount }
    assert_redirected_to usercount_path(assigns(:usercount))
  end

  test "should destroy usercount" do
    assert_difference('Usercount.count', -1) do
      delete :destroy, id: @usercount
    end

    assert_redirected_to usercounts_path
  end
end
