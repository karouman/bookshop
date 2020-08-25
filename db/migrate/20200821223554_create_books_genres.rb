class CreateBooksGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :books_genres do |t|
      t.bigint :book_id
      t.bigint :genre_id

      t.timestamps
    end

    add_index :books_genres, :book_id
    add_index :books_genres, :genre_id
  end
end
