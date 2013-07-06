require 'test_helper'

class FitnessesControllerTest < ActionController::TestCase
  setup do
    @fitness = fitnesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fitnesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fitness" do
    assert_difference('Fitness.count') do
      post :create, fitness: { name: @fitness.name }
    end

    assert_redirected_to fitness_path(assigns(:fitness))
  end

  test "should show fitness" do
    get :show, id: @fitness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fitness
    assert_response :success
  end

  test "should update fitness" do
    put :update, id: @fitness, fitness: { name: @fitness.name }
    assert_redirected_to fitness_path(assigns(:fitness))
  end

  test "should destroy fitness" do
    assert_difference('Fitness.count', -1) do
      delete :destroy, id: @fitness
    end

    assert_redirected_to fitnesses_path
  end
end
