require 'minitest/autorun'
require 'minitest/nyan_cat'
require 'pry'
require './lib/book'


class BookTest < MiniTest::Test
  def test_book_exists
    book = Book.new({author_first_name: "Harper",
                author_last_name: "Lee",
                title: "To Kill a Mockingbird",
                publication_date: "July 11, 1960"})

    assert_instance_of Book, book
  end

  def test_book_has_attributes
    book = Book.new({author_first_name: "Harper",
                author_last_name: "Lee",
                title: "To Kill a Mockingbird",
                publication_date: "July 11, 1960"})


    assert_equal "To Kill a Mockingbird", book.title
  end

  def test_can_list_author
    book = Book.new({author_first_name: "Harper",
                author_last_name: "Lee",
                title: "To Kill a Mockingbird",
                publication_date: "July 11, 1960"})

      assert_equal "Harper Lee", book.author
  end

  def test_book_can_list_publication_year
    book = Book.new({author_first_name: "Harper",
                author_last_name: "Lee",
                title: "To Kill a Mockingbird",
                publication_date: "July 11, 1960"})
      assert_equal "1960", book.publication_year
  end
end
