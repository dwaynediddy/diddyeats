require 'test_helper'

class PatronsProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get patrons_profile_show_url
    assert_response :success
  end

end
