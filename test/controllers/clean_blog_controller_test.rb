require 'test_helper'

class CleanBlogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clean_blog_index_url
    assert_response :success
  end

end
