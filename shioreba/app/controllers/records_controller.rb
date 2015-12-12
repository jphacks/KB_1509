class RecordsController < ApplicationController
	def save_record
      record = Record.new
      book = Book.get_info(params[:isbn])
      record.user_id = params[:user_id]
      record.read_date = params[:read_date]
      record.book_id = book.id if book
      record.save
      render text: ''
  end
end
