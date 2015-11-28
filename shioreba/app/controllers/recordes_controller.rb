class RecordesController < ApplicationController

  def save_recorde
      recode = Recode.new
      book = Book.get_info(params[:isbn])

      recode.user_id = params[:user_id]
      recode.date = params[:date]
      recode.book_id = book.id if book
      recode.save

      render text: ''
  end
end

