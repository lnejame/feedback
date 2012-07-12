require 'test_helper'

class HostPreferencesControllerTest < ActionController::TestCase
  setup do
    @host_preference = host_preferences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:host_preferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host_preference" do
    assert_difference('HostPreference.count') do
      post :create, host_preference: { name: @host_preference.name }
    end

    assert_redirected_to host_preference_path(assigns(:host_preference))
  end

  test "should show host_preference" do
    get :show, id: @host_preference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @host_preference
    assert_response :success
  end

  test "should update host_preference" do
    put :update, id: @host_preference, host_preference: { name: @host_preference.name }
    assert_redirected_to host_preference_path(assigns(:host_preference))
  end

  test "should destroy host_preference" do
    assert_difference('HostPreference.count', -1) do
      delete :destroy, id: @host_preference
    end

    assert_redirected_to host_preferences_path
  end
end
