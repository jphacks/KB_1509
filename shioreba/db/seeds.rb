# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create(:isbn => "9784780802047", :book_name => "おにぎりレシピ101", :book_author => "山田　玲子", :book_lang => "jpn", :book_summary => "", :book_image_url => "http://hanmoto.com/bd/img/9784780802047.jpg")
User.create(:name => "石塚大貴")
Recode.create(:book_id => "1", :date => "2015-11-29", :user_id => "1")
