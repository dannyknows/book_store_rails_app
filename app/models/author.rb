class Author < ApplicationRecord
  has_many :books_author
  has_many :books, through: :book_authors
end
