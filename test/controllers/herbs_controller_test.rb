require 'test_helper'

class HerbsControllerTest < ActionController::TestCase
  setup do
    @herb = herbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:herbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create herb" do
    assert_difference('Herb.count') do
      post :create, herb: { activity_id: @herb.activity_id, classification_id: @herb.classification_id, description: @herb.description, latin_name: @herb.latin_name, name: @herb.name, popular_name: @herb.popular_name }
    end

    assert_redirected_to herb_path(assigns(:herb))
  end

  test "should show herb" do
    get :show, id: @herb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @herb
    assert_response :success
  end

  test "should update herb" do
    patch :update, id: @herb, herb: { activity_id: @herb.activity_id, classification_id: @herb.classification_id, description: @herb.description, latin_name: @herb.latin_name, name: @herb.name, popular_name: @herb.popular_name }
    assert_redirected_to herb_path(assigns(:herb))
  end

  test "should destroy herb" do
    assert_difference('Herb.count', -1) do
      delete :destroy, id: @herb
    end

    assert_redirected_to herbs_path
  end
end
