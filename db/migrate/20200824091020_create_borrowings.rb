class CreateBorrowings < ActiveRecord::Migration[6.0]
  def change
    create_table :borrowings do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.datetime :returns, null: false
      t.datetime :returned, null:true, default: nil

      t.timestamps
    end
  end
end
