require "test_helper"

class PrinciplesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get principles_index_url
    assert_response :success
  end
end
