# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.get_info('9784774176987') # 1 機械学習
Book.get_info('9784621061220') # 2 パターン認識と機械学習 上
Book.get_info('9784623072989') # 3 教育学入門 
Book.get_info('9784641177116') # 4 教育学をつかむ
Book.get_info('9784000283243') # 5 教育学 (ヒューマニティーズ)
Book.get_info('9784785314118') # 6 数理統計学
Book.get_info('9784423895085') # 7 現代数理統計学
Book.get_info('9784832241190') # 8 ごちうさ1
Book.get_info('9784832242692') # 9 ごちうさ2
Book.get_info('9784832244207') # 10 ごちうさ3
Book.get_info('9784832246171') # 11 ごちうさ4
Book.get_info('9784041007914') # 12 魔女の宅急便
Book.get_info('9784873115733') # 13 JS6
Book.get_info('9784774148137') # 14  パーフェクトJS
Book.get_info('9784873116211') # 15  開眼JS
Book.get_info('9784774144665') # 16 JavaScript本格入門
Book.get_info('9784061529021') # 17 深層学習
Book.get_info('9784819027076') # 18　バーコードの歴史
Book.get_info('9784274502903') # 19 よくわかるバーコード
Book.get_info('9784832240117') # 20 きんもざ1
Book.get_info('9784832241435') # 21 きんもざ2
Book.get_info('9784832243149') # 22 きんもざ3
Book.get_info('9784832243507') # 23 きんもざ4
Book.get_info('9784832244979') # 24 きんもざ5
Book.get_info('9784832245785') # 25 きんもざ6
Book.get_info('9784789849982') # 26 フラッシュ・メモリ・カードの徹底研究―カードとマイコンの接続技法からファイル・システムの移植まで (TECH 
Book.get_info('9784789833417') # 27 USBハード&ソフト開発のすべて
Book.get_info('9784434155529') # 28 USBコンプリート

User.create(:name => "石塚大貴")
User.create(:name => "井手優太")
User.create(:name => "杉下大河")
User.create(:name => "水谷厚樹")

Recode.create(:book_id => "26", :date => "2015-11-28", :user_id => "4")
Recode.create(:book_id => "27", :date => "2015-11-28", :user_id => "4")
Recode.create(:book_id => "3", :date => "2015-11-28", :user_id => "2")
Recode.create(:book_id => "4", :date => "2015-11-28", :user_id => "2")
Recode.create(:book_id => "5", :date => "2015-11-28", :user_id => "2")
Recode.create(:book_id => "6", :date => "2015-11-28", :user_id => "2")
Recode.create(:book_id => "13", :date => "2015-11-28", :user_id => "2")
Recode.create(:book_id => "14", :date => "2015-11-28", :user_id => "1")
Recode.create(:book_id => "15", :date => "2015-11-28", :user_id => "1")
Recode.create(:book_id => "16", :date => "2015-11-28", :user_id => "1")
Recode.create(:book_id => "17", :date => "2015-11-28", :user_id => "1")
Recode.create(:book_id => "1", :date => "2015-11-28", :user_id => "1")
Recode.create(:book_id => "2", :date => "2015-11-28", :user_id => "1")
Recode.create(:book_id => "7", :date => "2015-11-28", :user_id => "1")
Recode.create(:book_id => "8", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "9", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "10", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "11", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "20", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "21", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "22", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "23", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "24", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "25", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "18", :date => "2015-11-28", :user_id => "3")
Recode.create(:book_id => "19", :date => "2015-11-28", :user_id => "3")

