require 'net/http'
require 'json'

class Book < ActiveRecord::Base

  def self.get_info(isbn_str)
    save_info(isbn_str) if isbn_str
    Book.find_by(isbn: isbn_str)
  end

  private
    def self.save_info(isbn_str)
      unless Book.exists?(:isbn => isbn_str)
          book = Book.new
          book_object = Net::HTTP.get URI.parse('http://www.hanmoto.com/api/book.php?ISBN=' + isbn_str)
          book_hash = Hash.from_xml(book_object)["HandotAPI"]["Book"]["Product"]

          # ISBN
          begin
            book.isbn = book_hash['ProductIdentifier']['IDValue']
          rescue
          end

          # name
          begin
            book.book_name = book_hash["DescriptiveDetail"]["TitleDetail"]["TitleElement"]["TitleText"]
          rescue
          end

          # author
          begin
            book.book_author = book_hash["DescriptiveDetail"]["Contributor"]["PersonName"]
          rescue
          end

          # language
          begin
            book.book_lang = book_hash["DescriptiveDetail"]["Language"]["LanguageCode"]
          rescue
          end

          # summary
          begin
            book.book_summary = book_hash["CollateralDetail"]["TextContent"][1]["Text"]
          rescue
          end

          # Resourcelink
          begin
            book.book_image_url = book_hash["CollateralDetail"]["SupportingResource"]["ResourceVersion"]["ResourceLink"]
          rescue
          end

          book.save
      end
    end

end
