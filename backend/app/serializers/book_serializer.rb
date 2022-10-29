class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :isbn_13, :price, :edition,
    :publication_year, :image_url,
    :publisher, :authors
    :isbn_10

  # belongs_to :publisher
  # has_many :authors

  def isbn_10
    return BooksService.convert_isbn13_to_10(object.isbn_13)
  end

  def publisher
    return object.publisher.name
  end

  def authors
    a_string = ""
    if object.authors.empty?
      return a_string
    end
    authors = object.authors
    authors.each.with_index do |author, index|
      a_string += author.full_name
      if index < authors.length - 1
        a_string += ", "
      end
    end
    return a_string
  end
end
