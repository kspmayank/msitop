require 'test_helper'

class LatestNewsControllerTest < ActionController::TestCase
  setup do
    @latest_news = latest_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:latest_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create latest_news" do
    assert_difference('LatestNews.count') do
      post :create, latest_news: { content: @latest_news.content }
    end

    assert_redirected_to latest_news_path(assigns(:latest_news))
  end

  test "should show latest_news" do
    get :show, id: @latest_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @latest_news
    assert_response :success
  end

  test "should update latest_news" do
    patch :update, id: @latest_news, latest_news: { content: @latest_news.content }
    assert_redirected_to latest_news_path(assigns(:latest_news))
  end

  test "should destroy latest_news" do
    assert_difference('LatestNews.count', -1) do
      delete :destroy, id: @latest_news
    end

    assert_redirected_to latest_news_index_path
  end
end
