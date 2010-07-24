require 'test_helper'

class QuotationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quotations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quotation" do
    assert_difference('Quotation.count') do
      post :create, :quotation => { }
    end

    assert_redirected_to quotation_path(assigns(:quotation))
  end

  test "should show quotation" do
    get :show, :id => quotations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => quotations(:one).to_param
    assert_response :success
  end

  test "should update quotation" do
    put :update, :id => quotations(:one).to_param, :quotation => { }
    assert_redirected_to quotation_path(assigns(:quotation))
  end

  test "should destroy quotation" do
    assert_difference('Quotation.count', -1) do
      delete :destroy, :id => quotations(:one).to_param
    end

    assert_redirected_to quotations_path
  end
end
