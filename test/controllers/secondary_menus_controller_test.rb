require 'test_helper'

class SecondaryMenusControllerTest < ActionController::TestCase
  setup do
    @secondary_menu = secondary_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secondary_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secondary_menu" do
    assert_difference('SecondaryMenu.count') do
      post :create, secondary_menu: { link: @secondary_menu.link, name: @secondary_menu.name, order: @secondary_menu.order }
    end

    assert_redirected_to secondary_menu_path(assigns(:secondary_menu))
  end

  test "should show secondary_menu" do
    get :show, id: @secondary_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secondary_menu
    assert_response :success
  end

  test "should update secondary_menu" do
    patch :update, id: @secondary_menu, secondary_menu: { link: @secondary_menu.link, name: @secondary_menu.name, order: @secondary_menu.order }
    assert_redirected_to secondary_menu_path(assigns(:secondary_menu))
  end

  test "should destroy secondary_menu" do
    assert_difference('SecondaryMenu.count', -1) do
      delete :destroy, id: @secondary_menu
    end

    assert_redirected_to secondary_menus_path
  end
end
