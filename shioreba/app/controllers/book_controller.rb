class BookController < ApplicationController
	require require 'net/http'
    require 'json'

    before_action :has_book_information

    private
      def has_book_information
        books = Book.find(params[:user_id]) #ある人が読んだ本を知りたい. 
        for books.each do |book|
            if book.book_name? #bookがisbn以外の情報を持っているか確認をする処理. 
      		  # 何も必要無い
	    	else
	  		  #apiに情報を取得しに行く処理
	  		  book_object = Net::HTTP.get URI.parse('http://www.hanmoto.com/api/book.php?ISBN=' + book.isbn)
	  		  book_hash = Hash.from_xml(book_object)
	  		  book.book_name = book_hash["HandotAPI"]["Book"]["Product"]["DescriptiveDetail"]["Collection"]["TitleDetail"]["TitleElement"]["TitleText"] 
	  		  book.book_author = book_hash["HandotAPI"]["Book"]["Product"]["DescriptiveDetail"]["Contributor"][0]["PersonName"]
	  		  book.book_lang = book_hash["HandotAPI"]["Book"]["Product"]["DescriptiveDetail"]["Language"]["LanguageCode"]
	  		  book.book_summary = book_hash["HandotAPI"]["Book"]["Product"]["CollateralDetail"]["TextContent"][1]["Text"]
	  		  book.book_img_url = book_hash["HandotAPI"]["Book"]["Product"]["CollateralDetail"]["SupportingResource"]["ResourceVersion"]["ResourceLink"]
	  		end
	  	end
	  end
end