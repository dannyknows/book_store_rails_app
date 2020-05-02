p "seeding 🌱"

10.times do
  Book.create(
    title: Faker::Book.title
  )
   Author.create(
    name: Faker::Book.author
  )
   Genre.create(
    name: Faker::Book.genre
  )
end

p "tables populated"

10.times do |count|
  BooksGenre.create(
    book_id: count + 1,
    genre_id: rand(1..10)
  )
   BookAuthor.create(
    book_id: count + 1,
    author_id: rand(1..10)
  )
end

p "book-attri relations created"

6.times do |count|
   BookAuthor.create(
    book_id: rand(1..10),
    author_id: rand(1..10)
  )
  BooksGenre.create(
    book_id: rand(1..10),
    genre_id: rand(1..10)
  )
end

p "additional relations created"

p "completed 🌴"