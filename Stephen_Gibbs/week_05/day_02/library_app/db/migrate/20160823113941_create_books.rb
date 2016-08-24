class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.date :year
      t.text :genre
      t.text :synopsis
      t.integer :author_id

      t.timestamps


    end
  end
end
