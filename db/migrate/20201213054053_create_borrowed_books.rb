class CreateBorrowedBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :borrowed_books do |t|
      t.references :book
      t.references :user
      t.date "date_borrowed", default: -> {'CURRENT_DATE'}
      t.date "date_returned", default: -> {'CURRENT_DATE'}

      t.timestamps
    end
  end
end
