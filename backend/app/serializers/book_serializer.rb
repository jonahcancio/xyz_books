class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :isbn_13, :price, :edition, 
    :publication_year, :image_url,
    :isbn_10
  
  belongs_to :publisher
  has_many :authors

  def isbn_10
    BooksService.convert_isbn13_to_10(object.isbn_13)
  end
end
