require 'test_helper'

class TktestsControllerTest < ActionController::TestCase
  setup do
    @tktest = tktests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tktests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tktest" do
    assert_difference('Tktest.count') do
      post :create, tktest: { category_id: @tktest.category_id, comptime: @tktest.comptime, noq: @tktest.noq, pass_score: @tktest.pass_score, topic_id: @tktest.topic_id }
    end

    assert_redirected_to tktest_path(assigns(:tktest))
  end

  test "should show tktest" do
    get :show, id: @tktest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tktest
    assert_response :success
  end

  test "should update tktest" do
    put :update, id: @tktest, tktest: { category_id: @tktest.category_id, comptime: @tktest.comptime, noq: @tktest.noq, pass_score: @tktest.pass_score, topic_id: @tktest.topic_id }
    assert_redirected_to tktest_path(assigns(:tktest))
  end

  test "should destroy tktest" do
    assert_difference('Tktest.count', -1) do
      delete :destroy, id: @tktest
    end

    assert_redirected_to tktests_path
  end
end
