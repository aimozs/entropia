require 'test_helper'

class LodesControllerTest < ActionController::TestCase
  setup do
    @lode = lodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lode" do
    assert_difference('Lode.count') do
      post :create, lode: { latitude: @lode.latitude, longitude: @lode.longitude, resource_id: @lode.resource_id, size: @lode.size }
    end

    assert_redirected_to lode_path(assigns(:lode))
  end

  test "should show lode" do
    get :show, id: @lode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lode
    assert_response :success
  end

  test "should update lode" do
    patch :update, id: @lode, lode: { latitude: @lode.latitude, longitude: @lode.longitude, resource_id: @lode.resource_id, size: @lode.size }
    assert_redirected_to lode_path(assigns(:lode))
  end

  test "should destroy lode" do
    assert_difference('Lode.count', -1) do
      delete :destroy, id: @lode
    end

    assert_redirected_to lodes_path
  end
end
