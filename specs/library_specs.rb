require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  # Create a class for a Library that has an array of books.
  # Each book should be a hash with a title, which is a string,
  # and rental details, which is another hash with
  # a student name and due date.

  def setup

    @book_01 = Book.new("lord_of_the_rings","Jeff","01/12/16")

    @book_02 = Book.new("Pinocchio","Paul","20/09/18")

    @book_03 = Book.new("The Vikings","Jennifer","30/11/18")

    @library = Library.new([@book_01,@book_02,@book_03])

  end


  def test_books_in_library
    result = @library.books_in_library
    expected = ["lord_of_the_rings","Pinocchio","The Vikings"]
    assert_equal(expected,result)
  end

  # Create a method that takes in a book title and
  # returns all of the information about that book.
  def test_book_all_details
    result = @library.book_all_details("Pinocchio")
    expected = {title: "Pinocchio", rental_details: {student_name: "Paul", date: "20/09/18"}}
    assert_equal(expected,result)
  end

  # Create a method that takes in a book title and
  # returns only the rental details for that book.
  def test_book_rental_details
    result = @library.book_rental_details("Pinocchio")
    expected = {student_name: "Paul", date: "20/09/18"}
    assert_equal(expected,result)
  end

  # Create a method that takes in a book title and
  # adds it to our book list (add a new hash for
  # the book with the student name and date being
  # left as empty strings)
  def test_add_new_book
    @library.add_new_book("Neverending Story")
    result = @library.book_all_details("Neverending Story")
    expected = {title: "Neverending Story", rental_details: {student_name: "", date: ""}}
    assert_equal(expected,result)
  end

  # Create a method that changes the rental details
  # of a book by taking in the title of the book,
  # the student renting it and the date it's due
  # to be returned.
  def  test_update_rental_details
    @library.update_rental_details("Pinocchio","Lucy","30/03/2019")
    result = @library.book_rental_details("Pinocchio")
    expected = {student_name: "Lucy", date: "30/03/2019"}
    assert_equal(expected,result)
  end



end
