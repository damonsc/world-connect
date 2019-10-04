require 'test_helper'

class StatusControllerTest < ActionDispatch::IntegrationTest
  test "should get damon" do
    get status_damon_url
    assert_response :success
  end

end
