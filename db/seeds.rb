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
20.times do 
  BooksGenre.create(
    book_id: rand(1..10),
    genre_id: rand(1..10)
  )
end
p "book-genre relations created"
10.times do 
   BookAuthor.create(
    book_id: rand(1..10),
    author_id: rand(1..10)
  )
end

p "book-authors relations created"

p "completed 🌴"