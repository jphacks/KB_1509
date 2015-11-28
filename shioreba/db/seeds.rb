# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.get_info('9784774176987') # 1 機械学習
Book.get_info('9784621061220') # 2 パターン認識と機械学習 上

User.create(:name => "石塚大貴")
User.create(:name => "井手優太")
User.create(:name => "杉下大河")
User.create(:name => "水谷厚樹")

Recode.create(:book_id => "1", :date => "2015-11-28", :user_id => "1")
Recode.create(:book_id => "2", :date => "2015-11-28", :user_id => "1")
Recode.create(:book_id => "2", :date => "2015-11-28", :user_id => "2")
