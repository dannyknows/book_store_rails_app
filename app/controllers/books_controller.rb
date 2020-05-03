class BooksController < ApplicationController
  def books
    @books = Book.order('title asc').all
    helpers.helpme
  end

  def authors
    @authors = Author.order('name asc').all
  end

  def genres
    @genres = Genre.order('name asc').all
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def edit 
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    bookgenre = BooksGenre.all
    i = 0
    bookgenre.each do |connection|
      if connection.book_id == params[:id].to_i
        connection.genre_id = genre_params(i)["genre_id_#{i}"].to_i
        connection.save
        i += 1
      end
    end
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end

  def genre_params(num)
    params.require(:book).permit("genre_id_#{num}")
  end

end
