require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { ans1: @question.ans1, ans2: @question.ans2, ans3: @question.ans3, cans: @question.cans, category_id: @question.category_id, noca: @question.noca, qno: @question.qno, ques: @question.ques, topic_id: @question.topic_id }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question" do
    put :update, id: @question, question: { ans1: @question.ans1, ans2: @question.ans2, ans3: @question.ans3, cans: @question.cans, category_id: @question.category_id, noca: @question.noca, qno: @question.qno, ques: @question.ques, topic_id: @question.topic_id }
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
