require 'test_helper'

class EgressesControllerTest < ActionController::TestCase
  setup do
    @egress = egresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:egresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create egress" do
    assert_difference('Egress.count') do
      post :create, egress: { age: @egress.age, animal_id: @egress.animal_id, cause: @egress.cause, causedeath: @egress.causedeath, date: @egress.date, observations: @egress.observations, reproduction: @egress.reproduction }
    end

    assert_redirected_to egress_path(assigns(:egress))
  end

  test "should show egress" do
    get :show, id: @egress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @egress
    assert_response :success
  end

  test "should update egress" do
    patch :update, id: @egress, egress: { age: @egress.age, animal_id: @egress.animal_id, cause: @egress.cause, causedeath: @egress.causedeath, date: @egress.date, observations: @egress.observations, reproduction: @egress.reproduction }
    assert_redirected_to egress_path(assigns(:egress))
  end

  test "should destroy egress" do
    assert_difference('Egress.count', -1) do
      delete :destroy, id: @egress
    end

    assert_redirected_to egresses_path
  end
end
