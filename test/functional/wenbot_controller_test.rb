require 'test_helper'

class WenbotControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get stop" do
    get :stop
    assert_response :success
  end

  test "should get forward" do
    get :forward
    assert_response :success
  end

  test "should get backward" do
    get :backward
    assert_response :success
  end

  test "should get left" do
    get :left
    assert_response :success
  end

  test "should get right" do
    get :right
    assert_response :success
  end

end
