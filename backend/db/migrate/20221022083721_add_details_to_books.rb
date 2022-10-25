class AddDetailsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :title, :string, null: false
    add_column :books, :isbn_13, :string, null: false
    add_column :books, :price, :decimal, precision: 10, scale: 2, null: false
    add_column :books, :edition, :string
    add_column :books, :publication_year, :integer, null: false
    add_column :books, :image_url, :text
  end
end
