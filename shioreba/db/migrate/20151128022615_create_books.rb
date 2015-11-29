class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :book_name
      t.string :book_author
      t.string :book_lang
      t.text :book_summary
      t.string :book_image_url

      t.timestamps null: false
    end
  end
end
