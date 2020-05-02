class BooksController < ApplicationController
  def books
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

end
