require 'test_helper'

class FortsControllerTest < ActionController::TestCase
  setup do
    @fort = forts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fort" do
    assert_difference('Fort.count') do
      post :create, fort: @fort.attributes
    end

    assert_redirected_to fort_path(assigns(:fort))
  end

  test "should show fort" do
    get :show, id: @fort.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fort.to_param
    assert_response :success
  end

  test "should update fort" do
    put :update, id: @fort.to_param, fort: @fort.attributes
    assert_redirected_to fort_path(assigns(:fort))
  end

  test "should destroy fort" do
    assert_difference('Fort.count', -1) do
      delete :destroy, id: @fort.to_param
    end

    assert_redirected_to forts_path
  end
end
