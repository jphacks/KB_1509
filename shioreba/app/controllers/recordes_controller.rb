class RecordesController < ApplicationController
	def save_recorde
	  recode = Recode.new
	  recode.user_id = params[:user_id]
	  recode.date = params[:date]
	  recode.book_id = Book.get_info(params[:isbn])
	  recode.save
	  render text: "保存されました?"
	end
end

isbn = "9784774164106"
user_id = 1
date = "2015-11-28"
