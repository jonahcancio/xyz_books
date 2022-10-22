# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Author.create([
    { first_name: 'Joel', last_name: 'Hartse' },
    { first_name: 'Hannah', middle_name: 'P', last_name: 'Templer' },
    { first_name: 'Marguerite', middle_name: 'Z', last_name: 'Durias' },
    { first_name: 'Kingsley', last_name: 'Amis' },
    { first_name: 'Fannie', middle_name: 'Peters', last_name: 'Flagg' },
    { first_name: 'Camille', middle_name: 'Byron', last_name: 'Paglia' },
    { first_name: 'Rainer', middle_name: 'Steel', last_name: 'Rike' }
])



p = Publisher.create(name: 'Paste Magazine')
p.books.create(title: 'American Elf', isbn_13: '978-1-891830-85-3', publication_year: 2004, edition: 'Book 2', price: 1000)

p = Publisher.create(name: 'Publishers Weekly')
p.books.create(title: 'Cosmoknights', isbn_13: '978-1-60309-454-2', publication_year: 2019, edition: 'Book 1', price: 2000)

p = Publisher.create(name: 'Graywolf Press')
p.books.create(title: 'Essex County', isbn_13: '978-1-60309-038-4', publication_year: 1990, price: 500)
p.books.create(title: 'Hey, Mister (Vol 1)', isbn_13: '978-1-891830-02-0', publication_year: 2000, edition: 'After School Special', price: 1200)

p = Publisher.create(name: 'McSweeney\'s')
p.books.create(title: 'The Underwater Welder', isbn_13: '978-1-60309-398-9', publication_year: 2022, price: 3000)

    
