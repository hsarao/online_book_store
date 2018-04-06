require 'test_helper'

class AdvancedSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advanced_search_index_url
    assert_response :success
  end

end
