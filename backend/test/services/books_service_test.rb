require "test_helper"

class BooksServiceTest < ActiveJob::TestCase
    test "is_isbn13 works" do
        sample_isbn_13 = "9781603090384"
        assert BooksService.is_isbn13(sample_isbn_13)
    end

    test "is_isbn10 works" do
        sample_isbn_10 = "160309038X"
        assert BooksService.is_isbn10(sample_isbn_10)
    end


  test "convert isbn13 to 10 works" do
    sample_isbn_13 = "9781603090384"
    expected_isbn_10 = "160309038X"
    actual_isbn_10 = BooksService.convert_isbn13_to_10(sample_isbn_13)
    assert_equal expected_isbn_10, actual_isbn_10, "isbn13 to 10 works"
  end

  test "convert isbn10 to 13 works" do
    sample_isbn_10 = "160309038X"
    expected_isbn_13 = "9781603090384"
    actual_isbn_13 = BooksService.convert_isbn10_to_13(sample_isbn_10)
    assert_equal expected_isbn_13, actual_isbn_13, "isbn10 to 13 works"
  end
end
