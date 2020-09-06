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
      @book.borrow( current_user, params[:duration].to_i )
      redirect_to @book
    end
  end

  def pass_back
    #TODO: optimize sql select
    @book = Book.find(params[:id])
    @book.pass_back( current_user )
    redirect_to @book
  end

end
