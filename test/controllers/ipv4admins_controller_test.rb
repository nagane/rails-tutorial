require 'test_helper'

class Ipv4adminsControllerTest < ActionController::TestCase
  setup do
    @ipv4admin = ipv4admins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ipv4admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ipv4admin" do
    assert_difference('Ipv4admin.count') do
      post :create, ipv4admin: { host: @ipv4admin.host, ip_address: @ipv4admin.ip_address, ip_status: @ipv4admin.ip_status, note: @ipv4admin.note, update_time: @ipv4admin.update_time }
    end

    assert_redirected_to ipv4admin_path(assigns(:ipv4admin))
  end

  test "should show ipv4admin" do
    get :show, id: @ipv4admin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ipv4admin
    assert_response :success
  end

  test "should update ipv4admin" do
    patch :update, id: @ipv4admin, ipv4admin: { host: @ipv4admin.host, ip_address: @ipv4admin.ip_address, ip_status: @ipv4admin.ip_status, note: @ipv4admin.note, update_time: @ipv4admin.update_time }
    assert_redirected_to ipv4admin_path(assigns(:ipv4admin))
  end

  test "should destroy ipv4admin" do
    assert_difference('Ipv4admin.count', -1) do
      delete :destroy, id: @ipv4admin
    end

    assert_redirected_to ipv4admins_path
  end
end
