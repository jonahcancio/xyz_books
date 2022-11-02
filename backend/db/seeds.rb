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

Publisher.create([
    { name: 'Paste Magazine' },
    { name: 'Publishers Weekly' },
    { name: 'Graywolf Press' },
    { name: 'McSweeney\'s' }
])

Book.create(title: 'American Elf', isbn_13: '9781891830853', publication_year: 2004, edition: 'Book 2', price: 1000,
    publisher: Publisher.find_by(name: 'Paste Magazine'),
    authors: [Author.find_by(first_name: 'Joel'), Author.find_by(first_name: 'Hannah'), Author.find_by(first_name: 'Marguerite')],
    image_url: 'https://images-na.ssl-images-amazon.com/images/I/71Iz84+tLIL._AC_UL600_SR600,600_.jpg'
)
Book.create(title: 'Cosmoknights', isbn_13: '9781603094542', publication_year: 2019, edition: 'Book 1', price: 2000,
    publisher: Publisher.find_by(name: 'Publishers Weekly'),
    authors: [Author.find_by(first_name: 'Kingsley')],
    image_url: 'https://uploads-ssl.webflow.com/5c2572d8fd28a7238eeec2dd/609ff382c598f367c39fd584_cosmoknights_book_one_colors_WEB_01.jpg'
)
Book.create(title: 'Essex County', isbn_13: '9781603090384', publication_year: 1990, price: 500,
    publisher: Publisher.find_by(name: 'Graywolf Press'),
    authors: [Author.find_by(first_name: 'Kingsley')],
    image_url: 'https://m.media-amazon.com/images/I/8125Bbu9dsL.jpg'
)
Book.create(title: 'Hey, Mister (Vol 1)', isbn_13: '9781891830020', publication_year: 2000, edition: 'After School Special', price: 1200,
    publisher: Publisher.find_by(name: 'Graywolf Press'),
    authors: [Author.find_by(first_name: 'Hannah'), Author.find_by(first_name: 'Fannie'), Author.find_by(first_name: 'Camille')],
    image_url: 'https://www.insidemydesk.com/comics/tim.jpg'
)
Book.create(title: 'The Underwater Welder', isbn_13: '9781603093989', publication_year: 2022, price: 3000,
    publisher: Publisher.find_by(name: 'McSweeney\'s'),
    authors: [Author.find_by(first_name: 'Rainer')],
    image_url: 'https://m.media-amazon.com/images/I/91+XkroXM0L.jpg'
)


    
