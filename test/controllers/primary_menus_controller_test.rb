require 'test_helper'

class PrimaryMenusControllerTest < ActionController::TestCase
  setup do
    @primary_menu = primary_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:primary_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create primary_menu" do
    assert_difference('PrimaryMenu.count') do
      post :create, primary_menu: { link: @primary_menu.link, name: @primary_menu.name, order: @primary_menu.order }
    end

    assert_redirected_to primary_menu_path(assigns(:primary_menu))
  end

  test "should show primary_menu" do
    get :show, id: @primary_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @primary_menu
    assert_response :success
  end

  test "should update primary_menu" do
    patch :update, id: @primary_menu, primary_menu: { link: @primary_menu.link, name: @primary_menu.name, order: @primary_menu.order }
    assert_redirected_to primary_menu_path(assigns(:primary_menu))
  end

  test "should destroy primary_menu" do
    assert_difference('PrimaryMenu.count', -1) do
      delete :destroy, id: @primary_menu
    end

    assert_redirected_to primary_menus_path
  end
end
