require 'test_helper'

class CompositionsControllerTest < ActionController::TestCase
  setup do
    @composition = compositions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compositions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create composition" do
    assert_difference('Composition.count') do
      post :create, composition: { description: @composition.description, name: @composition.name, number: @composition.number }
    end

    assert_redirected_to composition_path(assigns(:composition))
  end

  test "should show composition" do
    get :show, id: @composition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @composition
    assert_response :success
  end

  test "should update composition" do
    patch :update, id: @composition, composition: { description: @composition.description, name: @composition.name, number: @composition.number }
    assert_redirected_to composition_path(assigns(:composition))
  end

  test "should destroy composition" do
    assert_difference('Composition.count', -1) do
      delete :destroy, id: @composition
    end

    assert_redirected_to compositions_path
  end
end
