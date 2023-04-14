class AddFavoritforeignKeyToVerses < ActiveRecord::Migration[6.1]
  def change
    add_column :verses, :book_id, :integer
  end
end
