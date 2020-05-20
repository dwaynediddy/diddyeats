require 'test_helper'

class PatronsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get patrons_show_url
    assert_response :success
  end

end
