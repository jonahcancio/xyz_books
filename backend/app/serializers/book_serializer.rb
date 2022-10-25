class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :isbn_13, :price, :edition, 
    :publication_year, :image_url
  
  belongs_to :publisher
  has_many :authors
end
