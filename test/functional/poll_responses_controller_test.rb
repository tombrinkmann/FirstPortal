require 'test_helper'

class PollResponsesControllerTest < ActionController::TestCase
  setup do
    @poll_response = poll_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poll_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poll_response" do
    assert_difference('PollResponse.count') do
      post :create, poll_response: { age: @poll_response.age, candidate: @poll_response.candidate, gender: @poll_response.gender, location: @poll_response.location }
    end

    assert_redirected_to poll_response_path(assigns(:poll_response))
  end

  test "should show poll_response" do
    get :show, id: @poll_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poll_response
    assert_response :success
  end

  test "should update poll_response" do
    put :update, id: @poll_response, poll_response: { age: @poll_response.age, candidate: @poll_response.candidate, gender: @poll_response.gender, location: @poll_response.location }
    assert_redirected_to poll_response_path(assigns(:poll_response))
  end

  test "should destroy poll_response" do
    assert_difference('PollResponse.count', -1) do
      delete :destroy, id: @poll_response
    end

    assert_redirected_to poll_responses_path
  end
end
