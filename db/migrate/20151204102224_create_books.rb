class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :resume
      t.integer :year_published

      t.timestamps null: false
    end
  end
end
