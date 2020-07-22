require 'minitest/autorun'
require 'minitest/nyan_cat'
require 'pry'
require './lib/author'
require './lib/book'


class AuthorTest < MiniTest::Test
  def test_author_exists
    charlotte_bronte = Author.new({first_name: "Charlotte",
                                  last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end

  def test_can_get_name
    charlotte_bronte = Author.new({first_name: "Charlotte",
                                  last_name: "Bronte"})
    assert_equal "Charlotte Bronte", charlotte_bronte.name
  end

  def test_author_starts_with_no_books
    charlotte_bronte = Author.new({first_name: "Charlotte",
                                  last_name: "Bronte"})
    assert_equal [], charlotte_bronte.books
  end

  def test_author_can_write_book
    charlotte_bronte = Author.new({first_name: "Charlotte",
                                  last_name: "Bronte"})

    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    assert_equal Book, jane_eyre.class

    assert_equal [jane_eyre], charlotte_bronte.books

    villete = charlotte_bronte.write("Villette", "1853")
    assert_equal [jane_eyre, villete], charlotte_bronte.books
  end

end
