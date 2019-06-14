require 'test_helper'

class TeamRolesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get team_roles_index_url
    assert_response :success
  end

end
