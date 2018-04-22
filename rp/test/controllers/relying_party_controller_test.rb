require 'test_helper'

class RelyingPartyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get relying_party_index_url
    assert_response :success
  end

end
