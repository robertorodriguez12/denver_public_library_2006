class Library

  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name     = name
    @books    = []
    @authors  = []
  end

  def add_author(author)
    # binding.pry
    @authors << author
    @books   << author.books
    @books.flatten!
  end



end
