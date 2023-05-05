require "test_helper"

module DevHub
  class GeneratorsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get generators_url
      assert_response :success
    end
  end
end
