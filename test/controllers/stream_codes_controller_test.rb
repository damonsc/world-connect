require "test_helper"

class StreamCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stream_code = stream_codes(:one)
  end

  test "should get index" do
    get stream_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_stream_code_url
    assert_response :success
  end

  test "should create stream_code" do
    assert_difference('StreamCode.count') do
      post stream_codes_url, params: { stream_code: { code: @stream_code.code, redirect: @stream_code.redirect } }
    end

    assert_redirected_to stream_code_url(StreamCode.last)
  end

  test "should show stream_code" do
    get stream_code_url(@stream_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_stream_code_url(@stream_code)
    assert_response :success
  end

  test "should update stream_code" do
    patch stream_code_url(@stream_code), params: { stream_code: { code: @stream_code.code, redirect: @stream_code.redirect } }
    assert_redirected_to stream_code_url(@stream_code)
  end

  test "should destroy stream_code" do
    assert_difference('StreamCode.count', -1) do
      delete stream_code_url(@stream_code)
    end

    assert_redirected_to stream_codes_url
  end
end
