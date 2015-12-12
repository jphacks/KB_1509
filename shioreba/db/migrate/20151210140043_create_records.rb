class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id
      t.integer :book_id
      t.date :read_date
      t.timestamps null: false
    end
  end
end