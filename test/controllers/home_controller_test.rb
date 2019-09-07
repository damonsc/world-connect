require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get documents" do
    get home_documents_url
    assert_response :success
  end

  test "should get videos" do
    get home_videos_url
    assert_response :success
  end

  test "should get clients" do
    get home_clients_url
    assert_response :success
  end

end
