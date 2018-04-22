require 'test_helper'

class OpenIdProviderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get open_id_provider_index_url
    assert_response :success
  end

end
