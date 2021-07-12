require 'test_helper'

class ClientCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_code = client_codes(:one)
  end

  test "should get index" do
    get client_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_client_code_url
    assert_response :success
  end

  test "should create client_code" do
    assert_difference('ClientCode.count') do
      post client_codes_url, params: { client_code: { client: @client_code.client, code: @client_code.code } }
    end

    assert_redirected_to client_code_url(ClientCode.last)
  end

  test "should show client_code" do
    get client_code_url(@client_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_code_url(@client_code)
    assert_response :success
  end

  test "should update client_code" do
    patch client_code_url(@client_code), params: { client_code: { client: @client_code.client, code: @client_code.code } }
    assert_redirected_to client_code_url(@client_code)
  end

  test "should destroy client_code" do
    assert_difference('ClientCode.count', -1) do
      delete client_code_url(@client_code)
    end

    assert_redirected_to client_codes_url
  end
end
