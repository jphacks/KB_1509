class Book < ActiveRecord::Base
	require 'net/http'
    require 'json'
	def self.get_info(isbn_str)
		save_info(isbn_str)
		if Book.exists?(isbn: isbn_str)
			return Book.find_by(isbn: isbn_str)
		end
	end

	def self.save_info(isbn_str)
		unless Book.exists?(isbn: isbn_str)
			book = Book.new
			book_object = Net::HTTP.get URI.parse('http://www.hanmoto.com/api/book.php?ISBN=' + isbn_str)
			book_hash = Hash.from_xml(book_object)["HandotAPI"]["Book"]["Product"]
			book.book_name = book_hash["DescriptiveDetail"]["TitleDetail"]["TitleElement"]["TitleText"]
			book.book_author = book_hash["DescriptiveDetail"]["Contributor"][0]["PersonName"]
			book.book_lang = book_hash["DescriptiveDetail"]["Language"]["LanguageCode"]
			book.book_summary = book_hash["CollateralDetail"]["TextContent"][1]["Text"]
			book.book_image_url = book_hash["CollateralDetail"]["SupportingResource"]["ResourceVersion"]["ResourceLink"]
			book.save
		end
	end
end
