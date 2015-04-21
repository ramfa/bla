require 'test_helper'

class MedicinsControllerTest < ActionController::TestCase
  setup do
    @medicin = medicins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicin" do
    assert_difference('Medicin.count') do
      post :create, medicin: { cantidad: @medicin.cantidad, droga: @medicin.droga, nombre: @medicin.nombre, tratamiento_id: @medicin.tratamiento_id }
    end

    assert_redirected_to medicin_path(assigns(:medicin))
  end

  test "should show medicin" do
    get :show, id: @medicin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicin
    assert_response :success
  end

  test "should update medicin" do
    patch :update, id: @medicin, medicin: { cantidad: @medicin.cantidad, droga: @medicin.droga, nombre: @medicin.nombre, tratamiento_id: @medicin.tratamiento_id }
    assert_redirected_to medicin_path(assigns(:medicin))
  end

  test "should destroy medicin" do
    assert_difference('Medicin.count', -1) do
      delete :destroy, id: @medicin
    end

    assert_redirected_to medicins_path
  end
end
