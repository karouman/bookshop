require 'date'

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def borrow
    @book = Book.find(params[:id])
    if ( !current_user )
      redirect_to login_path
    else
      Borrowing.create( user: current_user, book: @book, returns: DateTime.now() + params[:duration].to_i )
      redirect_to @book
    end
  end

  def return
    @book = Book.find(params[:id])
    @book.borrowings.each do |borrowing|
      if !borrowing.returned && borrowing.user == current_user
	borrowing.returned = DateTime.now
	borrowing.save()
      end
    end
    redirect_to @book
  end

end
