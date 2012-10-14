require 'test_helper'

class ScaleDataControllerTest < ActionController::TestCase
  setup do
    @scale_datum = scale_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scale_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scale_datum" do
    assert_difference('ScaleDatum.count') do
      post :create, :scale_datum => @scale_datum.attributes
    end

    assert_redirected_to scale_datum_path(assigns(:scale_datum))
  end

  test "should show scale_datum" do
    get :show, :id => @scale_datum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @scale_datum.to_param
    assert_response :success
  end

  test "should update scale_datum" do
    put :update, :id => @scale_datum.to_param, :scale_datum => @scale_datum.attributes
    assert_redirected_to scale_datum_path(assigns(:scale_datum))
  end

  test "should destroy scale_datum" do
    assert_difference('ScaleDatum.count', -1) do
      delete :destroy, :id => @scale_datum.to_param
    end

    assert_redirected_to scale_data_path
  end
end
