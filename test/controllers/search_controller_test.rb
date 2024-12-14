require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search_form" do
    get search_search_form_url
    assert_response :success
  end
end
