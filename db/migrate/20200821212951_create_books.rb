class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :abstract
      t.references :library
      t.timestamps
    end
  end
end
