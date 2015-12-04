class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :age
      t.string :last_book

      t.timestamps null: false
    end
  end
end
