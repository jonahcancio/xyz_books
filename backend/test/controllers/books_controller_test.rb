require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:cosmoknights)
  end

  test "should get index" do
    get api_books_url, as: :json
    assert_response :success
  end


end
