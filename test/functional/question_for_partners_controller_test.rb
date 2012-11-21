require 'test_helper'

class QuestionForPartnersControllerTest < ActionController::TestCase
  setup do
    @question_for_partner = question_for_partners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_for_partners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_for_partner" do
    assert_difference('QuestionForPartner.count') do
      post :create, :question_for_partner => @question_for_partner.attributes
    end

    assert_redirected_to question_for_partner_path(assigns(:question_for_partner))
  end

  test "should show question_for_partner" do
    get :show, :id => @question_for_partner.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_for_partner.to_param
    assert_response :success
  end

  test "should update question_for_partner" do
    put :update, :id => @question_for_partner.to_param, :question_for_partner => @question_for_partner.attributes
    assert_redirected_to question_for_partner_path(assigns(:question_for_partner))
  end

  test "should destroy question_for_partner" do
    assert_difference('QuestionForPartner.count', -1) do
      delete :destroy, :id => @question_for_partner.to_param
    end

    assert_redirected_to question_for_partners_path
  end
end
