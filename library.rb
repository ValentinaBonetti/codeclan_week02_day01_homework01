class Book

  attr_accessor :title, :rental_details

  def initialize(title,student_name,due_date)
    @title = title
    @rental_details = {student_name: student_name, date: due_date}
  end

end


class Library

  attr_accessor :books

  def initialize(books_array)
    @books = books_array
  end

  def books_in_library
    titles = []
    for book in @books
      titles << book.title
    end
    return titles
  end

  def book_all_details(title)
    for book in @books
      if book.title == title
        return {title: book.title, rental_details: {student_name: book.rental_details[:student_name], date: book.rental_details[:date]}}
      end
    end
  end

  def book_rental_details(title)
    for book in @books
      if book.title == title
        return book.rental_details
      end
    end
  end

  def add_new_book(title)
    @books << Book.new(title,"","")
  end

  def update_rental_details(title,new_student,new_date)
    for book in @books
      if book.title == title
        book.rental_details[:student_name] = new_student
        book.rental_details[:date] = new_date
      end
    end 
  end

end



#
# @book_02 = {
#     title: "Pinocchio",
#     rental_details: {
#      student_name: "Paul",
#      date: "20/09/18"
#     }
#   }
