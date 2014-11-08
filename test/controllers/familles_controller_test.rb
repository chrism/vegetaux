require 'test_helper'

class FamillesControllerTest < ActionController::TestCase
  setup do
    @famille = familles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:familles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create famille" do
    assert_difference('Famille.count') do
      post :create, famille: { nom: @famille.nom }
    end

    assert_redirected_to famille_path(assigns(:famille))
  end

  test "should show famille" do
    get :show, id: @famille
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @famille
    assert_response :success
  end

  test "should update famille" do
    patch :update, id: @famille, famille: { nom: @famille.nom }
    assert_redirected_to famille_path(assigns(:famille))
  end

  test "should destroy famille" do
    assert_difference('Famille.count', -1) do
      delete :destroy, id: @famille
    end

    assert_redirected_to familles_path
  end
end
