require 'test_helper'

class LeftSidebarsControllerTest < ActionController::TestCase
  setup do
    @left_sidebar = left_sidebars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:left_sidebars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create left_sidebar" do
    assert_difference('LeftSidebar.count') do
      post :create, left_sidebar: { content: @left_sidebar.content }
    end

    assert_redirected_to left_sidebar_path(assigns(:left_sidebar))
  end

  test "should show left_sidebar" do
    get :show, id: @left_sidebar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @left_sidebar
    assert_response :success
  end

  test "should update left_sidebar" do
    patch :update, id: @left_sidebar, left_sidebar: { content: @left_sidebar.content }
    assert_redirected_to left_sidebar_path(assigns(:left_sidebar))
  end

  test "should destroy left_sidebar" do
    assert_difference('LeftSidebar.count', -1) do
      delete :destroy, id: @left_sidebar
    end

    assert_redirected_to left_sidebars_path
  end
end
