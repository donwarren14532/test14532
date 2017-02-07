require 'test_helper'

class TestPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get test_pages_show_url
    assert_response :success
  end

end
