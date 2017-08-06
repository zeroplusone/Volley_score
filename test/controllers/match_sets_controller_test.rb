require 'test_helper'

class MatchSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match_set = match_sets(:one)
  end

  test "should get index" do
    get match_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_match_set_url
    assert_response :success
  end

  test "should create match_set" do
    assert_difference('MatchSet.count') do
      post match_sets_url, params: { match_set: { guest_team_score: @match_set.guest_team_score, hosting_team_score: @match_set.hosting_team_score, match_id: @match_set.match_id, set_number: @match_set.set_number } }
    end

    assert_redirected_to match_set_url(MatchSet.last)
  end

  test "should show match_set" do
    get match_set_url(@match_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_match_set_url(@match_set)
    assert_response :success
  end

  test "should update match_set" do
    patch match_set_url(@match_set), params: { match_set: { guest_team_score: @match_set.guest_team_score, hosting_team_score: @match_set.hosting_team_score, match_id: @match_set.match_id, set_number: @match_set.set_number } }
    assert_redirected_to match_set_url(@match_set)
  end

  test "should destroy match_set" do
    assert_difference('MatchSet.count', -1) do
      delete match_set_url(@match_set)
    end

    assert_redirected_to match_sets_url
  end
end
