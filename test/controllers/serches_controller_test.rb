require "test_helper"

class SerchesControllerTest < ActionDispatch::IntegrationTest
  test "should get formmain" do
    get serches_formmain_url
    assert_response :success
  end
end
