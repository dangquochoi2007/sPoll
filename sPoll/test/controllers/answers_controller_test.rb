require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get join" do
    get :join
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get response" do
    get :response
    assert_response :success
  end

  test "should get finish" do
    get :finish
    assert_response :success
  end

end
