#https://docs.google.com/document/d/1wk5Xb_3AheOkyt2X1KPQ0dujRRNQ0IE8Unqsu6qOWLg/edit?usp=sharing

class Library

  def initialize
    @books = []
  end

  def add(book)
    @books << book
  end

  def list(term = "")

    if (term != "")
      filtered = @books.select { |book| book.author == term }
      filtered.each do |book|
        puts book.title + " by " + book.author
      end
    else
      @books.each do |book|
        puts book.title + " by " + book.author
      end
    end
  end

  def count
    puts @books.count
  end
end

class Book

  attr_reader :title, :author

  def initialize(title = "Untitled", author = "Unnamed", damaged = false)
    @title = title
    @author = author
    @damaged = damaged
  end

  def mark
    @damaged = !@damaged
    puts "Book is damaged: " + @damaged.to_s
  end
end

bok = Book.new
bok2 = Book.new("a","bob steveson")
bok3 = Book.new("a","bob steveson")
paper_place = Library.new
paper_place.add(bok)
paper_place.add(bok2)
paper_place.add(bok3)
paper_place.list("bob steveson")
paper_place.count
