require 'test_helper'

class ConnectCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @connect_code = connect_codes(:one)
  end

  test "should get index" do
    get connect_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_connect_code_url
    assert_response :success
  end

  test "should create connect_code" do
    assert_difference('ConnectCode.count') do
      post connect_codes_url, params: { connect_code: { code: @connect_code.code, integer: @connect_code.integer } }
    end

    assert_redirected_to connect_code_url(ConnectCode.last)
  end

  test "should show connect_code" do
    get connect_code_url(@connect_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_connect_code_url(@connect_code)
    assert_response :success
  end

  test "should update connect_code" do
    patch connect_code_url(@connect_code), params: { connect_code: { code: @connect_code.code, integer: @connect_code.integer } }
    assert_redirected_to connect_code_url(@connect_code)
  end

  test "should destroy connect_code" do
    assert_difference('ConnectCode.count', -1) do
      delete connect_code_url(@connect_code)
    end

    assert_redirected_to connect_codes_url
  end
end
