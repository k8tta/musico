require 'test_helper'

class AnimeTitlesControllerTest < ActionController::TestCase
  setup do
    @anime_title = anime_titles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anime_titles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anime_title" do
    assert_difference('AnimeTitle.count') do
      post :create, anime_title: { icon: @anime_title.icon, icon_url: @anime_title.icon_url, title: @anime_title.title }
    end

    assert_redirected_to anime_title_path(assigns(:anime_title))
  end

  test "should show anime_title" do
    get :show, id: @anime_title
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anime_title
    assert_response :success
  end

  test "should update anime_title" do
    patch :update, id: @anime_title, anime_title: { icon: @anime_title.icon, icon_url: @anime_title.icon_url, title: @anime_title.title }
    assert_redirected_to anime_title_path(assigns(:anime_title))
  end

  test "should destroy anime_title" do
    assert_difference('AnimeTitle.count', -1) do
      delete :destroy, id: @anime_title
    end

    assert_redirected_to anime_titles_path
  end
end
