require 'test_helper'

class TournamentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournament_type = tournament_types(:one)
  end

  test "should get index" do
    get tournament_types_url
    assert_response :success
  end

  test "should get new" do
    get new_tournament_type_url
    assert_response :success
  end

  test "should create tournament_type" do
    assert_difference('TournamentType.count') do
      post tournament_types_url, params: { tournament_type: { name: @tournament_type.name } }
    end

    assert_redirected_to tournament_type_url(TournamentType.last)
  end

  test "should show tournament_type" do
    get tournament_type_url(@tournament_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_tournament_type_url(@tournament_type)
    assert_response :success
  end

  test "should update tournament_type" do
    patch tournament_type_url(@tournament_type), params: { tournament_type: { name: @tournament_type.name } }
    assert_redirected_to tournament_type_url(@tournament_type)
  end

  test "should destroy tournament_type" do
    assert_difference('TournamentType.count', -1) do
      delete tournament_type_url(@tournament_type)
    end

    assert_redirected_to tournament_types_url
  end
end
