class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :address
      t.string :zipcode
      t.string :city
      t.timestamps
    end
  end
end
