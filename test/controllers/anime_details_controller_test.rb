require 'test_helper'

class AnimeDetailsControllerTest < ActionController::TestCase
  setup do
    @anime_detail = anime_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anime_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anime_detail" do
    assert_difference('AnimeDetail.count') do
      post :create, anime_detail: { anime_title_id: @anime_detail.anime_title_id, ed_artist: @anime_detail.ed_artist, ed_movie: @anime_detail.ed_movie, ed_title: @anime_detail.ed_title, op_artist: @anime_detail.op_artist, op_movie: @anime_detail.op_movie, op_title: @anime_detail.op_title, profile: @anime_detail.profile }
    end

    assert_redirected_to anime_detail_path(assigns(:anime_detail))
  end

  test "should show anime_detail" do
    get :show, id: @anime_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anime_detail
    assert_response :success
  end

  test "should update anime_detail" do
    patch :update, id: @anime_detail, anime_detail: { anime_title_id: @anime_detail.anime_title_id, ed_artist: @anime_detail.ed_artist, ed_movie: @anime_detail.ed_movie, ed_title: @anime_detail.ed_title, op_artist: @anime_detail.op_artist, op_movie: @anime_detail.op_movie, op_title: @anime_detail.op_title, profile: @anime_detail.profile }
    assert_redirected_to anime_detail_path(assigns(:anime_detail))
  end

  test "should destroy anime_detail" do
    assert_difference('AnimeDetail.count', -1) do
      delete :destroy, id: @anime_detail
    end

    assert_redirected_to anime_details_path
  end
end
