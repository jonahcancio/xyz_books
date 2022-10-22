class AddDetailsToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :first_name, :string, null: false
    add_column :authors, :last_name, :string, null: false
    add_column :authors, :middle_name, :string, null: true
  end
end
