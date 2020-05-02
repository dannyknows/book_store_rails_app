class Book < ApplicationRecord
  has_many :books_genres
  has_many :book_authors
  has_many :genres, through: :books_genres
  has_many :authors, through: :book_authors
end
