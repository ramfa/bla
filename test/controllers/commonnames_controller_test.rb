require 'test_helper'

class CommonnamesControllerTest < ActionController::TestCase
  setup do
    @commonname = commonnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commonnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commonname" do
    assert_difference('Commonname.count') do
      post :create, commonname: { kind_id: @commonname.kind_id, name: @commonname.name }
    end

    assert_redirected_to commonname_path(assigns(:commonname))
  end

  test "should show commonname" do
    get :show, id: @commonname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commonname
    assert_response :success
  end

  test "should update commonname" do
    patch :update, id: @commonname, commonname: { kind_id: @commonname.kind_id, name: @commonname.name }
    assert_redirected_to commonname_path(assigns(:commonname))
  end

  test "should destroy commonname" do
    assert_difference('Commonname.count', -1) do
      delete :destroy, id: @commonname
    end

    assert_redirected_to commonnames_path
  end
end
