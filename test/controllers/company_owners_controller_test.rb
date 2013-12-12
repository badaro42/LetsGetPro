require 'test_helper'

class CompanyOwnersControllerTest < ActionController::TestCase
  setup do
    @company_owner = company_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_owner" do
    assert_difference('CompanyOwner.count') do
      post :create, company_owner: { company_id: @company_owner.company_id, user_id: @company_owner.user_id }
    end

    assert_redirected_to company_owner_path(assigns(:company_owner))
  end

  test "should show company_owner" do
    get :show, id: @company_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_owner
    assert_response :success
  end

  test "should update company_owner" do
    patch :update, id: @company_owner, company_owner: { company_id: @company_owner.company_id, user_id: @company_owner.user_id }
    assert_redirected_to company_owner_path(assigns(:company_owner))
  end

  test "should destroy company_owner" do
    assert_difference('CompanyOwner.count', -1) do
      delete :destroy, id: @company_owner
    end

    assert_redirected_to company_owners_path
  end
end
