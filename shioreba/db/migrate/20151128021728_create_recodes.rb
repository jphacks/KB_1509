class CreateRecodes < ActiveRecord::Migration
  def change
    create_table :recodes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true
      t.date :date

      t.timestamps null: false
    end
  end
end
